import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/utils.dart';
import '../entities/product.dart';
import '../repositories/product_listing_repo.dart';

part 'fetch_most_use_products_use_case.freezed.dart';

@singleton
class FetchMostUseProductsUseCase extends AsyncUseCase<List<Product>, FetchMostUseProductsParams> {
  FetchMostUseProductsUseCase(this.repo);

  final ProductListingRepo repo;

  @override
  Future<Either<Failure, List<Product>>> call(FetchMostUseProductsParams params) {
    return repo.fetchMostUseProducts(limit: params.limit, offset: params.offset);
  }
}

@freezed
class FetchMostUseProductsParams with _$FetchMostUseProductsParams {
  const factory FetchMostUseProductsParams({
    required int limit,
    required int offset,
  }) = _Pramas;
}
