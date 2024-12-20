import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/utils.dart';
import '../entities/product.dart';
import '../repositories/product_listing_repo.dart';

@singleton
class FetchSnackProductsUseCase extends AsyncUseCase<List<Product>, NoParams> {
  FetchSnackProductsUseCase(this.repo);

  final ProductListingRepo repo;

  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) {
    return repo.fetchSnackProducts();
  }
}
