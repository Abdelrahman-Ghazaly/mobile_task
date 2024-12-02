import '../../domain/entities/product.dart';
import 'product_category_model.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.title,
    required super.price,
    required super.description,
    required super.images,
    required super.creationAt,
    required super.updatedAt,
    required super.category,
  });

  @override
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    try {
      return ProductModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        images: json['images'],
        creationAt: json['creationAt'],
        updatedAt: json['updatedAt'],
        category: ProductCategoryModel.fromJson(json['category']),
      );
    } catch (e) {
      throw FormatException("Failed to parse ProductCategoryModel: $e");
    }
  }
}
