import 'package:fpdart/fpdart.dart';

import '../../../../../core/utils/utils.dart';
import '../entities/product.dart';
import '../repositories/product_listing_repo.dart';

class FetchRecommendedProductsUseCase extends AsyncUseCase<List<Product>, NoParams> {
  FetchRecommendedProductsUseCase(this.repo);

  final ProductListingRepo repo;

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) {
    return repo.fetchRecommendedProducts();
  }
}
