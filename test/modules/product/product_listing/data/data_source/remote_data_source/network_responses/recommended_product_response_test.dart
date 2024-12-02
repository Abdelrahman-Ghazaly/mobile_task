import 'package:flutter_test/flutter_test.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/recommended_product_response.dart';
import 'package:nana/modules/product/product_listing/domain/entities/product.dart';

void main() {
  group('RecommendedProductResponse', () {
    test('fromJson creates response with empty list when input is null', () {
      final response = RecommendedProductResponse.fromJson(null);

      expect(response.data, isEmpty);
    });

    test('fromJson creates response with empty list when input is empty', () {
      final response = RecommendedProductResponse.fromJson([]);

      expect(response.data, isEmpty);
    });

    test('fromJson correctly maps json to product list', () {
      final jsonInput = [
        _product1,
        _product2,
      ];

      final response = RecommendedProductResponse.fromJson(jsonInput);

      expect(response.data, hasLength(2));
      expect(response.data, isA<List<Product>>());
      expect(response.data[0], isA<Product>());
      expect(response.data[0].id, equals(2));
      expect(response.data[0].title, equals('Classic Red Pullover Hoodie'));
    });

    test('fromJson handles partial invalid data', () {
      final jsonInput = [
        _product1,
        {} // Invalid empty object
      ];

      final response = RecommendedProductResponse.fromJson(jsonInput);

      expect(response.data, hasLength(1));
      expect(response.data[0].id, equals(2));
    });

    test('factory constructor preserves order of input', () {
      final jsonInput = [
        _product1,
        _product2,
      ];

      final response = RecommendedProductResponse.fromJson(jsonInput);

      expect(response.data[0].id, equals(2));
      expect(response.data[1].id, equals(3));
    });
  });
}

const _product1 = {
  "id": 2,
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

const _product2 = {
  "id": 3,
  "title": "Classic Heather Gray Hoodie",
  "price": 69,
  "description":
      "Stay cozy and stylish with our Classic Heather Gray Hoodie. Crafted from soft, durable fabric, it features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs. Perfect for a casual day out or a relaxing evening in, this hoodie is a versatile addition to any wardrobe.",
  "images": [
    "https://i.imgur.com/cHddUCu.jpeg",
    "https://i.imgur.com/CFOjAgK.jpeg",
    "https://i.imgur.com/wbIMMme.jpeg"
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
