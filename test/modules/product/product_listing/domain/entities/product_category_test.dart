import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product_category.dart';

void main() {
  group('ProductCategory', () {
    test('should create a ProductCategory instance with valid data', () {
      // Arrange
      const id = 1;
      const name = 'Electronics';
      const image = 'https://example.com/electronics.png';
      const creationAt = '2024-12-01T00:00:00Z';
      const updatedAt = '2024-12-01T12:00:00Z';

      // Act
      final category = ProductCategory(
        id: id,
        name: name,
        image: image,
        creationAt: creationAt,
        updatedAt: updatedAt,
      );

      // Assert
      expect(category.id, id);
      expect(category.name, name);
      expect(category.image, image);
      expect(category.creationAt, creationAt);
      expect(category.updatedAt, updatedAt);
    });
  });
}
