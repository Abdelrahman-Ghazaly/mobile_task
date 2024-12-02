import '../../domain/entities/product_category.dart';

class ProductCategoryModel extends ProductCategory {
  ProductCategoryModel({
    required super.id,
    required super.name,
    required super.image,
    required super.creationAt,
    required super.updatedAt,
  });

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    try {
      return ProductCategoryModel(
        id: json['id'] as int,
        name: json['name'] as String,
        image: json['image'] as String,
        creationAt: json['creationAt'],
        updatedAt: json['updatedAt'],
      );
    } catch (e) {
      throw FormatException("Failed to parse ProductCategoryModel: $e");
    }
  }
}
