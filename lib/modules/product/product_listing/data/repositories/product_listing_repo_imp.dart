import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/errors/failure.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_listing_repo.dart';
import '../data_source/remote_data_source/product_listing_remote_data_source.dart';

@Singleton(as: ProductListingRepo)
class ProductListingRepoImp extends ProductListingRepo {
  ProductListingRepoImp(this._remoteDataSource);

  final ProductListingRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Product>>> fetchMostUseProducts({required int limit, required int offset}) async {
    final response = await _remoteDataSource.fetchMostUseProducts(limit: limit, offset: offset);
    return response.fold(
      (failure) => Left(failure),
      (success) => Right(success.data),
    );
  }

  @override
  Future<Either<Failure, List<Product>>> fetchRecommendedProducts() async {
    final response = await _remoteDataSource.fetchRecommendedProducts();
    return response.fold(
      (failure) => Left(failure),
      (success) => Right(success.data),
    );
  }

  @override
  Future<Either<Failure, List<Product>>> fetchSnackProducts() async {
    final response = await _remoteDataSource.fetchSnackProducts();
    return response.fold(
      (failure) => Left(failure),
      (success) => Right(success.data),
    );
  }
}
