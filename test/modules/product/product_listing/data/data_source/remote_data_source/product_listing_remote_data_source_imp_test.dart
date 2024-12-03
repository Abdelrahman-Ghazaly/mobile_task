import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nana/core/network/network.dart';
import 'package:nana/core/utils/utils.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/most_use_products_network_request.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/recommended_products_network_request.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_requests/snack_products_network_request.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/most_use_products_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/recommended_product_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/network_responses/snack_products_response.dart';
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/product_listing_remote_data_source_imp.dart';

import 'product_listing_remote_data_source_imp_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<NetworkSession>(),
  MockSpec<NetworkRequest>(),
  MockSpec<Response>(),
])
void main() {
  group('ProductListingRemoteDataSourceImp', () {
    late ProductListingRemoteDataSourceImp dataSource;
    late MockNetworkSession mockNetworkSession;

    setUp(() {
      mockNetworkSession = MockNetworkSession();
      dataSource = ProductListingRemoteDataSourceImp(mockNetworkSession);
    });

    group('fetchMostUseProducts', () {
      test('returns Right with MostUseProductsResponse on successful request', () async {
        // Arrange
        final mockResponse = MockResponse();

        when(mockNetworkSession.request(request: anyNamed('request'))).thenAnswer((_) async => mockResponse);

        when(mockResponse.data).thenReturn(mockJsonData);

        // Act
        final result = await dataSource.fetchMostUseProducts(limit: 10, offset: 0);

        // Assert
        expect(result, isA<Right<Failure, MostUseProductsResponse>>());
        result.fold((failure) => fail('Should be a Right'), (response) {
          expect(response.data, hasLength(2));
          expect(response.data[0].id, equals(2));
        });

        verify(mockNetworkSession.request(request: argThat(isA<MostUseProductsNetworkRequest>(), named: 'request')))
            .called(1);
      });

      test('returns Left with Failure on network request error', () async {
        // Arrange
        when(mockNetworkSession.request(request: anyNamed('request'))).thenThrow(Exception('Network error'));

        // Act
        final result = await dataSource.fetchMostUseProducts(limit: 10, offset: 0);

        // Assert
        expect(result, isA<Left<Failure, MostUseProductsResponse>>());
        result.fold((failure) {
          expect(failure, isA<Failure>());
        }, (response) => fail('Should be a Left'));
      });
    });

    group('fetchRecommendedProducts', () {
      test('returns Right with RecommendedProductResponse on successful request', () async {
        // Arrange
        final mockResponse = MockResponse();

        when(mockNetworkSession.request(request: anyNamed('request'))).thenAnswer((_) async => mockResponse);

        when(mockResponse.data).thenReturn(mockJsonData);

        // Act
        final result = await dataSource.fetchRecommendedProducts();

        // Assert
        expect(result, isA<Right<Failure, RecommendedProductResponse>>());
        result.fold((failure) => fail('Should be a Right'), (response) {
          expect(response.data, hasLength(2));
          expect(response.data[0].id, equals(2));
        });

        verify(mockNetworkSession.request(request: argThat(isA<RecommendedProductsNetworkRequest>(), named: 'request')))
            .called(1);
      });
      test('returns Left with Failure on network request error', () async {
        // Arrange
        when(mockNetworkSession.request(request: anyNamed('request'))).thenThrow(Exception('Network error'));

        // Act
        final result = await dataSource.fetchRecommendedProducts();

        // Assert
        expect(result.isLeft(), true);
        result.fold((failure) {
          expect(failure, isA<Failure>());
        }, (response) => fail('Should be a Left'));
      });
    });

    group('fetchSnackProducts', () {
      test('returns Right with SnackProductsResponse on successful request', () async {
        // Arrange
        final mockResponse = MockResponse();

        when(mockNetworkSession.request(request: anyNamed('request'))).thenAnswer((_) async => mockResponse);

        when(mockResponse.data).thenReturn(mockJsonData);

        // Act
        final result = await dataSource.fetchSnackProducts();

        // Assert
        expect(result, isA<Right<Failure, SnackProductsResponse>>());
        result.fold((failure) => fail('Should be a Right'), (response) {
          expect(response.data, hasLength(2));
          expect(response.data[0].id, equals(2));
        });

        verify(mockNetworkSession.request(request: argThat(isA<SnackProductsNetworkRequest>(), named: 'request')))
            .called(1);
      });
      test('returns Left with Failure on network request error', () async {
        // Arrange
        when(mockNetworkSession.request(request: anyNamed('request'))).thenThrow(Exception('Network error'));

        // Act
        final result = await dataSource.fetchSnackProducts();

        // Assert
        expect(result.isLeft(), true);
        result.fold((failure) {
          expect(failure, isA<Failure>());
        }, (response) => fail('Should be a Left'));
      });
    });
  });
}

final mockJsonData = [
  {
    "id": 2,
    "title": "Classic Red Pullover Hoodie",
    "price": 10,
    "description":
        "Elevate your casual wardrobe with our Classic Red Pullover Hoodie. Crafted with a soft cotton blend for ultimate comfort, this vibrant red hoodie features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs for a snug fit. The timeless design ensures easy pairing with jeans or joggers for a relaxed yet stylish look, making it a versatile addition to your everyday attire.",
    "images": [
      "https://i.imgur.com/1twoaDy.jpeg",
      "https://i.imgur.com/FDwQgLy.jpeg",
      "https://i.imgur.com/kg1ZhhH.jpeg"
    ],
    "creationAt": "2024-11-30T04:42:06.000Z",
    "updatedAt": "2024-11-30T04:42:06.000Z",
    "category": {
      "id": 1,
      "name": "Clothes",
      "image": "https://i.imgur.com/QkIa5tT.jpeg",
      "creationAt": "2024-11-30T04:42:06.000Z",
      "updatedAt": "2024-11-30T04:42:06.000Z"
    }
  },
  {
    "id": 3,
    "title": "Classic Heather Gray Hoodie",
    "price": 69,
    "description":
        "Stay cozy and stylish with our Classic Heather Gray Hoodie. Crafted from soft, durable fabric, it features a kangaroo pocket, adjustable drawstring hood, and ribbed cuffs. Perfect for a casual day out or a relaxing evening in, this hoodie is a versatile addition to any wardrobe.",
    "images": [
      "https://i.imgur.com/cHddUCu.jpeg",
      "https://i.imgur.com/CFOjAgK.jpeg",
      "https://i.imgur.com/wbIMMme.jpeg"
    ],
    "creationAt": "2024-11-30T04:42:06.000Z",
    "updatedAt": "2024-11-30T04:42:06.000Z",
    "category": {
      "id": 1,
      "name": "Clothes",
      "image": "https://i.imgur.com/QkIa5tT.jpeg",
      "creationAt": "2024-11-30T04:42:06.000Z",
      "updatedAt": "2024-11-30T04:42:06.000Z"
    }
  }
];
