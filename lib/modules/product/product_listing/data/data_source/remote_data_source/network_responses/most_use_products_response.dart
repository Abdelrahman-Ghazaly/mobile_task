import '../../../../../../../core/network/network.dart';
import '../../../../domain/entities/product.dart';
import '../../../models/product_model.dart';

class MostUseProductsResponse extends ListMappable {
  MostUseProductsResponse({required this.data});
  final List<Product> data;

  factory MostUseProductsResponse.fromJson(List<Map<String, dynamic>>? json) {
    late final List<Product>? data;
    if (json != null && json.isNotEmpty) {
      data = json.map((e) => ProductModel.fromJson(e)).toList();
    }
    return MostUseProductsResponse(data: data ?? []);
  }
}
