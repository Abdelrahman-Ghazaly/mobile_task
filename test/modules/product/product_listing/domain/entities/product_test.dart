import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';

void main() {
  group('Product', () {
    final productCategory = ProductCategory(
      id: 1,
      name: 'Electronics',
      image: 'https://example.com/electronics.png',
      creationAt: '2024-12-01T00:00:00Z',
      updatedAt: '2024-12-01T12:00:00Z',
    );

    test('should create a Product instance with valid data', () {
      // Arrange
      const id = 1;
      const title = 'Smartphone';
      const price = 699;
      const description = 'A high-end smartphone';
      final images = ['https://example.com/image1.png', 'https://example.com/image2.png'];
      const creationAt = '2024-12-01T00:00:00Z';
      const updatedAt = '2024-12-01T12:00:00Z';

      // Act
      final product = Product(
        id: id,
        title: title,
        price: price,
        description: description,
        images: images,
        creationAt: creationAt,
        updatedAt: updatedAt,
        category: productCategory,
      );

      // Assert
      expect(product.id, id);
      expect(product.title, title);
      expect(product.price, price);
      expect(product.description, description);
      expect(product.images, images);
      expect(product.creationAt, creationAt);
      expect(product.updatedAt, updatedAt);
      expect(product.category, productCategory);
    });
  });
}
