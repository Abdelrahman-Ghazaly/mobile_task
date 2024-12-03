import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:nana/core/services/app_di.dart';
import 'package:nana/core/utils/errors/failure.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/most_use_poroduct/most_use_product_cubit.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/widgets.dart';

import 'most_use_product_list_view_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MostUseProductsCubit>()])
void main() {
  late MockMostUseProductsCubit mockMostUseProductsCubit;

  setUpAll(() => HttpOverrides.global = null);

  setUp(() {
    mockMostUseProductsCubit = MockMostUseProductsCubit();
    di.registerSingleton<MostUseProductsCubit>(mockMostUseProductsCubit);
  });

  tearDown(() {
    di.reset();
  });

  final mockProducts = List.generate(
    6,
    (i) {
      final index = i + 1;
      return Product(
        id: index,
        title: 'Product $index',
        description: 'Description  $index',
        price: 10,
        images: ['https://example.com/image$index.jpg'],
        creationAt: '',
        updatedAt: '',
        category: ProductCategory(
          id: index,
          name: 'name',
          image: 'image',
          creationAt: 'creationAt',
          updatedAt: 'updatedAt',
        ),
      );
    },
  );

  Widget widgetUnderTest() {
    return const MaterialApp(
      home: Scaffold(
        body: MostUseProductsListView(),
      ),
    );
  }

  group('MostUseProductsListView Widget Tests', () {
    testWidgets('displays loading indicator when state is loading', (WidgetTester tester) async {
      when(mockMostUseProductsCubit.state).thenReturn(const MostUseProductsState(isLoading: true));

      await tester.pumpWidget(widgetUnderTest());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays error message and retry button on error', (WidgetTester tester) async {
      when(mockMostUseProductsCubit.state).thenReturn(
        const MostUseProductsState(error: Failure.generic('Network Error')),
      );

      await tester.pumpWidget(widgetUnderTest());
      expect(find.text('An Error Occurred: Network Error'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);
    });

    testWidgets('displays products in a wrap layout when state is success', (WidgetTester tester) async {
      when(mockMostUseProductsCubit.state).thenReturn(MostUseProductsState(products: mockProducts));

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.byType(ProductListItem), findsNWidgets(mockProducts.length));

      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);
    });

    testWidgets('displays load more button with CircularProgressIndicator on pagination loading',
        (WidgetTester tester) async {
      when(mockMostUseProductsCubit.state).thenReturn(
        MostUseProductsState(products: mockProducts, isPaginationLoading: true),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pump(const Duration(milliseconds: 100));

      expect(find.text('Load More'), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('tapping Load More button triggers fetchMostUseProducts', (WidgetTester tester) async {
      when(mockMostUseProductsCubit.state).thenReturn(
        MostUseProductsState(products: mockProducts),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      await tester.tap(find.text('Load More'));
      verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);
    });
  });

  testWidgets('simulating the flow from error to loading to success', (tester) async {
    final cubitStreamController = StreamController<MostUseProductsState>();

    when(mockMostUseProductsCubit.stream).thenAnswer((_) => cubitStreamController.stream);
    when(mockMostUseProductsCubit.state).thenReturn(
      const MostUseProductsState(error: Failure.generic('Network Error')),
    );

    await tester.pumpWidget(widgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.text('An Error Occurred: Network Error'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);

    cubitStreamController.add(const MostUseProductsState(isLoading: true));
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    cubitStreamController.add(MostUseProductsState(products: mockProducts));
    await tester.pumpAndSettle();

    expect(find.byType(ProductListItem), findsNWidgets(mockProducts.length));
    expect(find.text('Product 1'), findsOneWidget);
    expect(find.text('Product 2'), findsOneWidget);

    await cubitStreamController.close();
  });
  testWidgets('simulating the flow from success to pagination loading to success with more data', (tester) async {
    final cubitStreamController = StreamController<MostUseProductsState>();
    final state = MostUseProductsState(products: mockProducts);

    when(mockMostUseProductsCubit.stream).thenAnswer((_) => cubitStreamController.stream);
    when(mockMostUseProductsCubit.state).thenAnswer((_) => state);

    await tester.pumpWidget(widgetUnderTest());
    await tester.pumpAndSettle();

    expect(find.byType(ProductListItem), findsNWidgets(mockProducts.length));
    expect(find.text('Product 1'), findsOneWidget);
    expect(find.text('Product 2'), findsOneWidget);

    await tester.tap(find.text('Load More'));
    verify(mockMostUseProductsCubit.fetchMostUseProducts()).called(1);

    cubitStreamController.add(state.copyWith(isPaginationLoading: true));
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('Load More'), findsOneWidget);
    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    cubitStreamController.add(state.copyWith(isPaginationLoading: false, products: [...mockProducts, ...mockProducts]));
    await tester.pump();

    expect(find.byType(ProductListItem), findsNWidgets(mockProducts.length * 2));
    expect(find.text('Product 1'), findsAtLeast(2));
    expect(find.text('Product 2'), findsAtLeast(2));

    await cubitStreamController.close();
  });
}
