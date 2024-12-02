import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nana/core/services/services.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/snack_product/snack_product_cubit.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/product_list_view.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/widgets.dart';

import 'snack_products_list_view_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SnackProductsCubit>()])
void main() {
  late MockSnackProductsCubit mockSnackProductsCubit;

  setUpAll(() => HttpOverrides.global = null);

  setUp(() {
    mockSnackProductsCubit = MockSnackProductsCubit();
    di.registerSingleton<SnackProductsCubit>(mockSnackProductsCubit);
  });

  tearDown(() {
    di.reset();
  });

  Widget widgetUnderTest() {
    return const MaterialApp(
      home: Scaffold(
        body: SnackProductsListView(),
      ),
    );
  }

  final mockProducts = [
    Product(
      id: 1,
      title: 'Product 1',
      description: 'Description 1',
      price: 10,
      images: ['https://example.com/image1.jpg'],
      creationAt: '',
      updatedAt: '',
      category: ProductCategory(
        id: 1,
        name: 'name',
        image: 'image',
        creationAt: 'creationAt',
        updatedAt: 'updatedAt',
      ),
    ),
    Product(
      id: 2,
      title: 'Product 2',
      description: 'Description 2',
      price: 20,
      images: ['https://example.com/image2.jpg'],
      creationAt: '',
      updatedAt: '',
      category: ProductCategory(
        id: 1,
        name: 'name',
        image: 'image',
        creationAt: 'creationAt',
        updatedAt: 'updatedAt',
      ),
    ),
  ];

  group('SnackProductsListView Widget Test', () {
    testWidgets('displays loading indicator when state is loading', (tester) async {
      when(mockSnackProductsCubit.state).thenReturn(const SnackProductsState.loading());

      await tester.pumpWidget(widgetUnderTest());
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays products when state is success', (tester) async {
      when(mockSnackProductsCubit.state).thenReturn(SnackProductsState.success(products: mockProducts));

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.byType(ProductListView), findsOneWidget);
      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);
    });

    testWidgets('displays error message and retry button when state is error', (tester) async {
      when(mockSnackProductsCubit.state).thenReturn(
        const SnackProductsState.error(failure: Failure.generic('Network Error')),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.text('An Error Occurred: Network Error'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      verify(mockSnackProductsCubit.fetchRecommendedProducts()).called(1);
    });

    testWidgets('simulating the flow from error to loading to success', (tester) async {
      final cubitStreamController = StreamController<SnackProductsState>();

      when(mockSnackProductsCubit.stream).thenAnswer((_) => cubitStreamController.stream);
      when(mockSnackProductsCubit.state).thenReturn(
        const SnackProductsState.error(failure: Failure.generic('Network Error')),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      // Initially shows error state
      expect(find.text('An Error Occurred: Network Error'), findsOneWidget);

      // Simulate retry button tap
      await tester.tap(find.byType(ElevatedButton));
      verify(mockSnackProductsCubit.fetchRecommendedProducts()).called(1);

      // Emit loading state
      cubitStreamController.add(const SnackProductsState.loading());
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Emit success state
      cubitStreamController.add(SnackProductsState.success(products: mockProducts));
      await tester.pumpAndSettle();

      expect(find.byType(ProductListView), findsOneWidget);
      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);

      // Close the stream
      await cubitStreamController.close();
    });
  });
}
