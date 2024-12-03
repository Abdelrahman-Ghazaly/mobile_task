import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:fpdart/fpdart.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';
import 'package:nana/modules/product/product_listing/domain/repositories/product_listing_repo.dart';
import 'package:nana/modules/product/product_listing/domain/use_cases/use_cases.dart';

import 'fetch_snack_products_use_case_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ProductListingRepo>()])
void main() {
  late FetchSnackProductsUseCase useCase;
  late MockProductListingRepo mockRepo;

  setUp(() {
    mockRepo = MockProductListingRepo();
    useCase = FetchSnackProductsUseCase(mockRepo);
  });

  final products = [
    Product(
      id: 1,
      title: 'Product 1',
      price: 10,
      description: 'Description 1',
      images: ['https://example.com/image1.png'],
      creationAt: '2024-12-01T00:00:00Z',
      updatedAt: '2024-12-01T12:00:00Z',
      category: ProductCategory(
        id: 1,
        name: 'Category 1',
        image: 'https://example.com/category_image.png',
        creationAt: '2024-12-01T00:00:00Z',
        updatedAt: '2024-12-01T12:00:00Z',
      ),
    ),
  ];

  group('fetchSnackProductsUseCase', () {
    setUpAll(() {
      provideDummy(Either<Failure, List<Product>>.right(<Product>[]));
    });

    test('should return a list of products when the repository call is successful', () async {
      // Arrange
      final params = NoParams();
      when(mockRepo.fetchSnackProducts()).thenAnswer((_) async => Right(products));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, Right(products));
      verify(mockRepo.fetchSnackProducts()).called(1);
    });

    test('should return Failure when the repository call fails', () async {
      // Arrange
      final params = NoParams();
      const failure = ServerFailure();
      when(mockRepo.fetchSnackProducts()).thenAnswer((_) async => const Left(failure));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, const Left(failure));
      verify(mockRepo.fetchSnackProducts()).called(1);
    });

    test('should verify that params are passed correctly', () async {
      // Arrange
      final params = NoParams();
      when(mockRepo.fetchSnackProducts()).thenAnswer((_) async => Right(products));

      // Act
      final result = await useCase(params);

      // Assert
      expect(result, Right(products));
      verify(mockRepo.fetchSnackProducts()).called(1);
    });
  });
}
