import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/data/models/product_model.dart';

void main() {
  group('ProductModel', () {
    test('fromJson should parse valid JSON correctly', () {
      // Arrange
      final json = {
        "id": 1,
        "title": "Classic Red Pullover Hoodie",
        "price": 10,
        "description":
            "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
        "images": [
          "https://i.imgur.com/1twoaDy.jpeg",
          "https://i.imgur.com/FDwQgLy.jpeg",
          "https://i.imgur.com/kg1ZhhH.jpeg"
        ],
        "creationAt": "2024-11-30T04:42:06.000Z",
        "updatedAt": "2024-11-30T04:42:06.000Z",
        "category": {
          "id": 1,
          "name": "Clothes",
          "image": "https://i.imgur.com/QkIa5tT.jpeg",
          "creationAt": "2024-11-30T04:42:06.000Z",
          "updatedAt": "2024-11-30T04:42:06.000Z"
        }
      };

      // Act
      final result = ProductModel.fromJson(json);

      // Assert
      expect(result.id, 1);
      expect(result.title, "Classic Red Pullover Hoodie");
      expect(result.price, 10);
      expect(result.description,
          "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.");
      expect(
        result.images,
        ["https://i.imgur.com/1twoaDy.jpeg", "https://i.imgur.com/FDwQgLy.jpeg", "https://i.imgur.com/kg1ZhhH.jpeg"],
      );
      expect(result.creationAt, "2024-11-30T04:42:06.000Z");
      expect(result.updatedAt, "2024-11-30T04:42:06.000Z");
      expect(result.category.id, 1);
      expect(result.category.name, 'Clothes');
      expect(result.category.image, "https://i.imgur.com/QkIa5tT.jpeg");
    });

    test('fromJson should throw FormatException for missing fields', () {
      // Arrange
      final json = {
        "title": "Classic Red Pullover Hoodie",
        "price": 10,
        "description":
            "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
        "images": [
          "https://i.imgur.com/1twoaDy.jpeg",
          "https://i.imgur.com/FDwQgLy.jpeg",
          "https://i.imgur.com/kg1ZhhH.jpeg"
        ],
      };

      // Act & Assert
      expect(
        () => ProductModel.fromJson(json),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromJson should throw FormatException for invalid category format', () {
      // Arrange
      final json = {
        "id": 1,
        "title": "Classic Red Pullover Hoodie",
        "price": 10,
        "description":
            "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
        "images": [
          "https://i.imgur.com/1twoaDy.jpeg",
          "https://i.imgur.com/FDwQgLy.jpeg",
          "https://i.imgur.com/kg1ZhhH.jpeg"
        ],
        "creationAt": "2024-11-30T04:42:06.000Z",
        "updatedAt": "2024-11-30T04:42:06.000Z",
        'category': 'invalid_category_data',
      };

      // Act & Assert
      expect(
        () => ProductModel.fromJson(json),
        throwsA(isA<FormatException>()),
      );
    });

    test('fromJson should handle unexpected fields without crashing', () {
      // Arrange
      final json = {
        'id': 1,
        "title": "Classic Red Pullover Hoodie",
        "price": 10,
        "description":
            "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
        "images": [
          "https://i.imgur.com/1twoaDy.jpeg",
          "https://i.imgur.com/FDwQgLy.jpeg",
          "https://i.imgur.com/kg1ZhhH.jpeg"
        ],
        "creationAt": "2024-11-30T04:42:06.000Z",
        "updatedAt": "2024-11-30T04:42:06.000Z",
        "category": {
          "id": 1,
          "name": "Clothes",
          "image": "https://i.imgur.com/QkIa5tT.jpeg",
          "creationAt": "2024-11-30T04:42:06.000Z",
          "updatedAt": "2024-11-30T04:42:06.000Z"
        },
        'unexpectedField': 'unexpected_value',
      };

      // Act
      final result = ProductModel.fromJson(json);

      // Assert
      expect(result.id, 1);
      expect(result.title, "Classic Red Pullover Hoodie");
      expect(result.price, 10);
      expect(
        result.description,
        "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
      );
      expect(
        result.images,
        ["https://i.imgur.com/1twoaDy.jpeg", "https://i.imgur.com/FDwQgLy.jpeg", "https://i.imgur.com/kg1ZhhH.jpeg"],
      );
    });
  });
}
