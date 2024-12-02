import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/constants/enum/http_method.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/snack_products_network_request.dart';

void main() {
  group('SnackProductsNetworkRequest', () {
    late SnackProductsNetworkRequest networkRequest;

    setUp(() {
      networkRequest = SnackProductsNetworkRequest();
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
      final anotherRequest = SnackProductsNetworkRequest();

      expect(anotherRequest.endpoint, equals(networkRequest.endpoint));
      expect(anotherRequest.method, equals(networkRequest.method));
    });
  });
}
