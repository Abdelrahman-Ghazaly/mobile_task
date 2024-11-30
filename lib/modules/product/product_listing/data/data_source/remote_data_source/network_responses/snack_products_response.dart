import '../../../../../../../core/network/mappable.dart';
import '../../../../domain/entities/product.dart';
import '../../../models/product_model.dart';

class SnackProductsResponse extends ListMappable {
  SnackProductsResponse({required this.data});
  final List<Product> data;

  factory SnackProductsResponse.fromJson(List<Map<String, dynamic>>? json) {
    late final List<Product>? data;
    if (json != null && json.isNotEmpty) {
      data = json.map((e) => ProductModel.fromJson(e)).toList();
    }
    return SnackProductsResponse(data: data ?? []);
  }
}
