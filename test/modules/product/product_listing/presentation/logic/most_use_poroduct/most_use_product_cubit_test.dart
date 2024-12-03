import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/domain/use_cases/fetch_most_use_products_use_case.dart';
import 'package:nana/modules/product/product_listing/presentation/logic/most_use_poroduct/most_use_product_cubit.dart';

import 'most_use_product_cubit_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FetchMostUseProductsUseCase>()])
void main() {
  late MostUseProductsCubit cubit;
  late MockFetchMostUseProductsUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockFetchMostUseProductsUseCase();
    cubit = MostUseProductsCubit(mockUseCase);
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

  group('MostUseProductsCubit', () {
    setUpAll(() {
      final dummy = Either<Failure, List<Product>>.right([]);
      provideDummy(dummy);
    });
    blocTest<MostUseProductsCubit, MostUseProductsState>(
      'should emit loading state and success when fetchMostUseProducts is successful',
      build: () {
        when(mockUseCase.call(any)).thenAnswer((_) async => Right(products));
        return cubit;
      },
      act: (cubit) => cubit.fetchMostUseProducts(),
      expect: () => [
        const MostUseProductsState(isLoading: true),
        MostUseProductsState(
          products: products,
          currentPage: 0,
        ),
      ],
      verify: (_) {
        verify(mockUseCase.call(const FetchMostUseProductsParams(limit: 6, offset: 0))).called(1);
      },
    );

    blocTest<MostUseProductsCubit, MostUseProductsState>(
      'should emit pagination loading state and success when fetchMostUseProducts is successful with pagination',
      build: () {
        when(mockUseCase.call(any)).thenAnswer((_) async => Right(products));
        return cubit;
      },
      act: (cubit) async {
        // First call to load products
        await cubit.fetchMostUseProducts();
        // Second call to load next page (pagination)
        await cubit.fetchMostUseProducts();
      },
      expect: () => [
        const MostUseProductsState(isLoading: true),
        MostUseProductsState(
          products: products,
          currentPage: 0,
        ),
        MostUseProductsState(products: products, isPaginationLoading: true),
        MostUseProductsState(
          products: [...products, ...products],
          currentPage: 1,
        ),
      ],
      verify: (_) {
        verify(mockUseCase.call(const FetchMostUseProductsParams(limit: 6, offset: 0))).called(1);
        verify(mockUseCase.call(const FetchMostUseProductsParams(limit: 6, offset: 1))).called(1);
      },
    );

    blocTest<MostUseProductsCubit, MostUseProductsState>(
      'should emit error state when fetchMostUseProducts fails',
      build: () {
        when(mockUseCase.call(any)).thenAnswer((_) async => const Left(ServerFailure()));
        return cubit;
      },
      act: (cubit) async {
        await cubit.fetchMostUseProducts();
      },
      expect: () => [
        const MostUseProductsState(isLoading: true),
        const MostUseProductsState(
          error: ServerFailure(),
          isLoading: false,
          isPaginationLoading: false,
        ),
      ],
      verify: (_) {
        verify(mockUseCase.call(const FetchMostUseProductsParams(limit: 6, offset: 0))).called(1);
      },
    );
  });
}
