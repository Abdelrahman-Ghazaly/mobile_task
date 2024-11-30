import 'package:fpdart/fpdart.dart';

import '../../../../../core/utils/errors/failure.dart';
import '../entities/product.dart';

abstract class ProductListingRepo {
  Future<Either<Failure, List<Product>>> fetchMostUseProducts({
    required int limit,
    required int offset,
  });
  Future<Either<Failure, List<Product>>> fetchRecommendedProducts();
  Future<Either<Failure, List<Product>>> fetchSnackProducts();
}
