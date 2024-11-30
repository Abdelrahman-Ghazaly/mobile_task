import '../../../../../../../core/constants/enum/http_method.dart';
import '../../../../../../../core/network/network.dart';

class MostUseProductsNetworkRequest extends NetworkRequest {
  MostUseProductsNetworkRequest({
    required this.limit,
    required this.offset,
  });

  final int limit;
  final int offset;

  @override
  String get endpoint => '/products';

  @override
  Map<String, dynamic> get queryParameters => {
        'limit': limit,
        'offset': offset,
      };

  @override
  HttpMethod get method => HttpMethod.get;
}
