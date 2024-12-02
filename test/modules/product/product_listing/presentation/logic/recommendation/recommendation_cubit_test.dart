import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/domain/use_cases/use_cases.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/recommendation/recommendation_cubit.dart';

import 'recommendation_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FetchRecommendedProductsUseCase>()])
void main() {
  late RecommendationCubit cubit;
  late MockFetchRecommendedProductsUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockFetchRecommendedProductsUseCase();
    cubit = RecommendationCubit(mockUseCase);
  });

  final products = [
    Product(
      id: 1,
      title: 'Product 1',
      price: 100,
      description: 'Description of product 1',
      images: ['https://example.com/product1.png'],
      creationAt: '2024-12-01T00:00:00Z',
      updatedAt: '2024-12-01T00:00:00Z',
      category: ProductCategory(
        id: 1,
        name: 'Category 1',
        image: 'https://example.com/category1.png',
        creationAt: '2024-12-01T00:00:00Z',
        updatedAt: '2024-12-01T00:00:00Z',
      ),
    ),
  ];

  group('RecommendationCubit', () {
    setUpAll(() {
      provideDummy(Either<Failure, List<Product>>.right([]));
    });
    blocTest<RecommendationCubit, RecommendationState>(
      'should emit loading and success when fetchRecommendedProducts is successful',
      build: () {
        when(mockUseCase.call(any)).thenAnswer((_) async => Right(products));
        return cubit;
      },
      act: (cubit) => cubit.fetchRecommendedProducts(),
      expect: () => [
        const RecommendationState.loading(),
        RecommendationState.success(products: products),
      ],
      verify: (_) {
        verify(mockUseCase.call(any)).called(1);
      },
    );

    blocTest<RecommendationCubit, RecommendationState>(
      'should emit loading and error when fetchRecommendedProducts fails',
      build: () {
        when(mockUseCase.call(any)).thenAnswer((_) async => const Left(ServerFailure()));
        return cubit;
      },
      act: (cubit) => cubit.fetchRecommendedProducts(),
      expect: () => [
        const RecommendationState.loading(),
        const RecommendationState.error(failure: ServerFailure()),
      ],
      verify: (_) {
        verify(mockUseCase.call(any)).called(1);
      },
    );
  });
}
