import '../../domain/entities/product_category.dart';

class ProductCategoryModel extends ProductCategory {
  ProductCategoryModel({
    required super.id,
    required super.name,
    required super.image,
    required super.creationAt,
    required super.updatedAt,
  });

  @override
  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductCategoryModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      creationAt: json['creationAt'],
      updatedAt: json['updatedAt'],
    );
  }
}
