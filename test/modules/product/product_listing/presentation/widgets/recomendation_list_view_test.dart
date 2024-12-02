import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:nana/core/services/app_di.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/recommendation/recommendation_cubit.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/product_list_view.dart';
import 'package:nana/modules/product/product_listing/presentation/widgets/widgets.dart';

import 'recomendation_list_view_test.mocks.dart';

@GenerateNiceMocks([MockSpec<RecommendationCubit>()])
void main() {
  late MockRecommendationCubit mockRecommendationCubit;

  setUpAll(() => HttpOverrides.global = null);

  setUp(() {
    mockRecommendationCubit = MockRecommendationCubit();
    di.registerSingleton<RecommendationCubit>(mockRecommendationCubit);
  });

  tearDown(() {
    di.reset();
  });

  Widget widgetUnderTest() {
    return const MaterialApp(
      home: Scaffold(
        body: RecomendationListView(),
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

  group('RecomendationListView Widget Tests', () {
    testWidgets('displays loading indicator when state is loading', (tester) async {
      when(mockRecommendationCubit.state).thenReturn(const RecommendationState.loading());

      await tester.pumpWidget(widgetUnderTest());
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays products when state is success', (tester) async {
      when(mockRecommendationCubit.state).thenReturn(RecommendationState.success(products: mockProducts));

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.byType(ProductListView), findsOneWidget);
      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);
    });

    testWidgets('displays error message and retry button when state is error', (tester) async {
      when(mockRecommendationCubit.state).thenReturn(
        const RecommendationState.error(failure: Failure.generic('Network Error')),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.text('An Error Occurred: Network Error'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      verify(mockRecommendationCubit.fetchRecommendedProducts()).called(1);
    });
    testWidgets('simulating the flow from error to loading to success', (tester) async {
      final cubitStreamController = StreamController<RecommendationState>();

      when(mockRecommendationCubit.stream).thenAnswer((_) => cubitStreamController.stream);
      when(mockRecommendationCubit.state).thenReturn(
        const RecommendationState.error(failure: Failure.generic('Network Error')),
      );

      await tester.pumpWidget(widgetUnderTest());
      await tester.pumpAndSettle();

      expect(find.text('An Error Occurred: Network Error'), findsOneWidget);

      await tester.tap(find.byType(ElevatedButton));
      verify(mockRecommendationCubit.fetchRecommendedProducts()).called(1);

      cubitStreamController.add(const RecommendationState.loading());
      await tester.pump();
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      cubitStreamController.add(RecommendationState.success(products: mockProducts));
      await tester.pumpAndSettle();

      expect(find.byType(ProductListView), findsOneWidget);
      expect(find.text('Product 1'), findsOneWidget);
      expect(find.text('Product 2'), findsOneWidget);

      await cubitStreamController.close();
    });
  });
}
