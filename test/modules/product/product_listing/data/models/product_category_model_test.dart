import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/data/models/product_category_model.dart';

void main() {
  group('ProductCategoryModel', () {
    test('fromJson should parse valid JSON correctly', () {
      // Arrange
      final json = {
        'id': 1,
        'name': 'Electronics',
        'image': 'https://example.com/image.png',
        'creationAt': '2024-12-01T00:00:00Z',
        'updatedAt': '2024-12-01T12:00:00Z',
      };

      // Act
      final result = ProductCategoryModel.fromJson(json);

      // Assert
      expect(result.id, 1);
      expect(result.name, 'Electronics');
      expect(result.image, 'https://example.com/image.png');
      expect(result.creationAt, '2024-12-01T00:00:00Z');
      expect(result.updatedAt, '2024-12-01T12:00:00Z');
    });

    test('fromJson should throw FormatException for missing id', () {
      // Arrange
      final json = {
        'name': 'Electronics',
        'image': 'https://example.com/image.png',
        'creationAt': '2024-12-01T00:00:00Z',
        'updatedAt': '2024-12-01T12:00:00Z',
      };

      // Act & Assert
      expect(
        () => ProductCategoryModel.fromJson(json),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromJson should throw FormatException for invalid types', () {
      // Arrange
      final json = {
        'id': 'wrong_type',
        'name': 123,
        'image': true,
        'creationAt': null,
        'updatedAt': {},
      };

      // Act & Assert
      expect(
        () => ProductCategoryModel.fromJson(json),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromJson should handle unexpected fields without crashing', () {
      // Arrange
      final json = {
        'id': 1,
        'name': 'Electronics',
        'image': 'https://example.com/image.png',
        'creationAt': '2024-12-01T00:00:00Z',
        'updatedAt': '2024-12-01T12:00:00Z',
        'extraField': 'unexpected',
      };

      // Act
      final result = ProductCategoryModel.fromJson(json);

      // Assert
      expect(result.id, 1);
      expect(result.name, 'Electronics');
      expect(result.image, 'https://example.com/image.png');
      expect(result.creationAt, '2024-12-01T00:00:00Z');
      expect(result.updatedAt, '2024-12-01T12:00:00Z');
    });
  });
}
