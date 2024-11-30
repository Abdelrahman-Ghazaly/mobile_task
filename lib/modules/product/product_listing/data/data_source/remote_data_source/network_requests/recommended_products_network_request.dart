import 'package:nana/core/constants/enum/http_method.dart';
import 'package:nana/core/network/network.dart';

class RecommendedProductsNetworkRequest extends NetworkRequest {
  @override
  String get endpoint => '/products';

  @override
  HttpMethod get method => HttpMethod.get;
}
