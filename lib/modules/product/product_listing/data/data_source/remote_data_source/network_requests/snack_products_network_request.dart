import '../../../../../../../core/constants/enum/http_method.dart';
import '../../../../../../../core/network/network.dart';

class SnackProductsNetworkRequest extends NetworkRequest {
  @override
  String get endpoint => '/products';

  @override
  HttpMethod get method => HttpMethod.get;
}
