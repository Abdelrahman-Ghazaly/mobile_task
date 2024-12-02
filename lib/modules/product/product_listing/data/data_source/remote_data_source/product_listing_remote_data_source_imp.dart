import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/network/network.dart';
import '../../../../../../core/utils/errors/failure.dart';
import 'network_requests/most_use_products_network_request.dart';
import 'network_requests/recommended_products_network_request.dart';
import 'network_requests/snack_products_network_request.dart';
import 'network_responses/most_use_products_response.dart';
import 'network_responses/recommended_product_response.dart';
import 'network_responses/snack_products_response.dart';
import 'product_listing_remote_data_source.dart';

@Singleton(as: ProductListingRemoteDataSource)
class ProductListingRemoteDataSourceImp extends ProductListingRemoteDataSource {
  ProductListingRemoteDataSourceImp(this._session);
  final NetworkSession _session;

  @override
  Future<Either<Failure, MostUseProductsResponse>> fetchMostUseProducts({
    required int limit,
    required int offset,
  }) async {
    try {
      final response = await _session.request(
        request: MostUseProductsNetworkRequest(limit: limit, offset: offset),
      );

      final data = MostUseProductsResponse.fromJson(response.data);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, RecommendedProductResponse>> fetchRecommendedProducts() async {
    try {
      final response = await _session.request(
        request: RecommendedProductsNetworkRequest(),
      );

      final data = RecommendedProductResponse.fromJson(response.data);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SnackProductsResponse>> fetchSnackProducts() async {
    try {
      final response = await _session.request(
        request: SnackProductsNetworkRequest(),
      );

      final data = SnackProductsResponse.fromJson(response.data);
      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
