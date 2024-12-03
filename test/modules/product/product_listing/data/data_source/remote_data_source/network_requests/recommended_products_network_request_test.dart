import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/constants/enum/http_method.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/recommended_products_network_request.dart';

void main() {
  group('RecommendedProductsNetworkRequest', () {
    late RecommendedProductsNetworkRequest networkRequest;

    setUp(() {
      networkRequest = RecommendedProductsNetworkRequest();
    });

    test('endpoint is correctly set', () {
      expect(networkRequest.endpoint, equals('/products'));
    });

    test('http method is GET', () {
      expect(networkRequest.method, equals(HttpMethod.get));
    });

    test('query parameters are empty', () {
      expect(networkRequest.queryParameters, isEmpty);
    });

    test('multiple instances have same configuration', () {
      final anotherRequest = RecommendedProductsNetworkRequest();

      expect(anotherRequest.endpoint, equals(networkRequest.endpoint));
      expect(anotherRequest.method, equals(networkRequest.method));
    });
  });
}
