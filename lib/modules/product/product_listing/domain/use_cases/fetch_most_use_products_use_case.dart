import 'package:fpdart/fpdart.dart';

import '../../../../../core/utils/utils.dart';
import '../entities/product.dart';
import '../repositories/product_listing_repo.dart';

class FetchMostUseProductsUseCase extends AsyncUseCase<List<Product>, FetchMostUseProductsParams> {
  FetchMostUseProductsUseCase(this.repo);

  final ProductListingRepo repo;

  @override
  Future<Either<Failure, List<Product>>> call(FetchMostUseProductsParams params) {
    return repo.fetchMostUseProducts(limit: params.limit, offset: params.offset);
  }
}

class FetchMostUseProductsParams {
  FetchMostUseProductsParams({
    required this.limit,
    required this.offset,
  });

  final int limit;
  final int offset;
}
