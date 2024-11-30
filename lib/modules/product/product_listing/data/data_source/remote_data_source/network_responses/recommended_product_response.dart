import '../../../../../../../core/network/mappable.dart';
import '../../../../domain/entities/product.dart';
import '../../../models/product_model.dart';

class RecommendedProductResponse extends ListMappable {
  RecommendedProductResponse({required this.data});
  final List<Product> data;

  factory RecommendedProductResponse.fromJson(List<Map<String, dynamic>>? json) {
    late final List<Product>? data;
    if (json != null && json.isNotEmpty) {
      data = json.map((e) => ProductModel.fromJson(e)).toList();
    }
    return RecommendedProductResponse(data: data ?? []);
  }
}
