import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/constants/constants.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/most_use_products_network_request.dart';

void main() {
  group('MostUseProductsNetworkRequest', () {
    late MostUseProductsNetworkRequest networkRequest;

    setUp(() {
      networkRequest = MostUseProductsNetworkRequest(
        limit: 10,
        offset: 0,
      );
    });

    test('endpoint is correctly set', () {
      expect(networkRequest.endpoint, equals('/products'));
    });

    test('query parameters are correctly configured', () {
      expect(networkRequest.queryParameters, {
        'limit': 10,
        'offset': 0,
      });
    });

    test('http method is GET', () {
      expect(networkRequest.method, equals(HttpMethod.get));
    });

    test('network request can be created with different parameters', () {
      final anotherRequest = MostUseProductsNetworkRequest(
        limit: 20,
        offset: 10,
      );

      expect(anotherRequest.limit, equals(20));
      expect(anotherRequest.offset, equals(10));
      expect(anotherRequest.endpoint, equals('/products'));
      expect(anotherRequest.method, equals(HttpMethod.get));
    });

    test('query parameters update when limit and offset change', () {
      networkRequest = MostUseProductsNetworkRequest(
        limit: 15,
        offset: 5,
      );

      expect(networkRequest.queryParameters, {
        'limit': 15,
        'offset': 5,
      });
    });
  });
}
