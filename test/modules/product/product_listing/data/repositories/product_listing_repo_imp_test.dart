import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/most_use_products_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/recommended_product_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/snack_products_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/product_listing_remote_data_source.dart';
import 'package:nana/modules/product/product_listing/data/models/product_category_model.dart';
import 'package:nana/modules/product/product_listing/data/models/product_model.dart';
import 'package:nana/modules/product/product_listing/data/repositories/product_listing_repo_imp.dart';

import 'product_listing_repo_imp_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductListingRemoteDataSource>()])
void main() {
  late ProductListingRepoImp repository;
  late MockProductListingRemoteDataSource mockRemoteDataSource;

  setUp(() {
    mockRemoteDataSource = MockProductListingRemoteDataSource();
    repository = ProductListingRepoImp(mockRemoteDataSource);
  });

  final products = [
    ProductModel(
      id: 1,
      title: 'Product 1',
      price: 10,
      description: 'Description 1',
      images: ['image1'],
      creationAt: '2024-12-01T00:00:00Z',
      updatedAt: '2024-12-01T12:00:00Z',
      category: ProductCategoryModel(
        id: 1,
        name: 'Category 1',
        image: 'category_image',
        creationAt: '2024-12-01T00:00:00Z',
        updatedAt: '2024-12-01T12:00:00Z',
      ),
    ),
  ];

  group('fetchMostUseProducts', () {
    const int limit = 10;
    const int offset = 0;
    setUpAll(() {
      final dummy = Either<Failure, MostUseProductsResponse>.right(MostUseProductsResponse(data: []));
      provideDummy(dummy);
    });

    test('should return a list of products when the remote data source call is successful', () async {
      final expected = MostUseProductsResponse(data: products);
      // Arrange
      when(mockRemoteDataSource.fetchMostUseProducts(limit: limit, offset: offset)).thenAnswer(
        (_) async => Right(expected),
      );

      // Act
      final result = await repository.fetchMostUseProducts(limit: limit, offset: offset);

      // Assert
      expect(result, Right(products));
      verify(mockRemoteDataSource.fetchMostUseProducts(limit: limit, offset: offset)).called(1);
    });

    test('should return Failure when the remote data source call fails', () async {
      // Arrange
      const failure = ServerFailure();
      when(mockRemoteDataSource.fetchMostUseProducts(limit: limit, offset: offset))
          .thenAnswer((_) async => const Left(failure));

      // Act
      final result = await repository.fetchMostUseProducts(limit: limit, offset: offset);

      // Assert
      expect(result, const Left(failure));
      verify(mockRemoteDataSource.fetchMostUseProducts(limit: limit, offset: offset)).called(1);
    });
  });

  group('fetchRecommendedProducts', () {
    setUpAll(() {
      final dummy = Either<Failure, RecommendedProductResponse>.right(RecommendedProductResponse(data: []));
      provideDummy(dummy);
    });
    test('should return a list of products on success', () async {
      // Arrange
      final expected = RecommendedProductResponse(data: products);
      when(mockRemoteDataSource.fetchRecommendedProducts()).thenAnswer((_) async => Right(expected));

      // Act
      final result = await repository.fetchRecommendedProducts();

      // Assert
      expect(result, Right(products));
      verify(mockRemoteDataSource.fetchRecommendedProducts()).called(1);
    });

    test('should return Failure on error', () async {
      // Arrange
      const failure = ServerFailure();
      when(mockRemoteDataSource.fetchRecommendedProducts()).thenAnswer((_) async => const Left(failure));

      // Act
      final result = await repository.fetchRecommendedProducts();

      // Assert
      expect(result, const Left(failure));
      verify(mockRemoteDataSource.fetchRecommendedProducts()).called(1);
    });
  });

  group('fetchSnackProducts', () {
    setUpAll(() {
      final dummy = Either<Failure, SnackProductsResponse>.right(SnackProductsResponse(data: []));
      provideDummy(dummy);
    });
    test('should return a list of products on success', () async {
      // Arrange
      final expected = SnackProductsResponse(data: products);
      when(mockRemoteDataSource.fetchSnackProducts()).thenAnswer((_) async => Right(expected));

      // Act
      final result = await repository.fetchSnackProducts();

      // Assert
      expect(result, Right(products));
      verify(mockRemoteDataSource.fetchSnackProducts()).called(1);
    });

    test('should return Failure on error', () async {
      // Arrange
      const failure = ServerFailure();
      when(mockRemoteDataSource.fetchSnackProducts()).thenAnswer((_) async => const Left(failure));

      // Act
      final result = await repository.fetchSnackProducts();

      // Assert
      expect(result, const Left(failure));
      verify(mockRemoteDataSource.fetchSnackProducts()).called(1);
    });
  });
}
