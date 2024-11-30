import 'package:fpdart/fpdart.dart';
import 'network_responses/recommended_product_response.dart';
import 'network_responses/snack_products_response.dart';

import '../../../../../../core/utils/errors/failure.dart';
import 'network_responses/most_use_products_response.dart';

abstract class ProductListingRemoteDataSource {
  Future<Either<Failure, MostUseProductsResponse>> fetchMostUseProducts({
    required int limit,
    required int offset,
  });
  Future<Either<Failure, RecommendedProductResponse>> fetchRecommendedProducts();
  Future<Either<Failure, SnackProductsResponse>> fetchSnackProducts();
}
