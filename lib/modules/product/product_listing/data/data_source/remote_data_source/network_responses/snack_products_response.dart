import '../../../../domain/entities/product.dart';
import '../../../models/product_model.dart';

class SnackProductsResponse {
  SnackProductsResponse({required this.data});
  final List<Product> data;

  factory SnackProductsResponse.fromJson(List<dynamic>? json) {
    List<Product?> data = [];
    if (json != null && json.isNotEmpty) {
      data = json.map((e) {
        if (e is Map<String, dynamic>) {
          return ProductModel.fromJson(e);
        }
      }).toList();
    }
    return SnackProductsResponse(data: data.nonNulls.toList());
  }
}
