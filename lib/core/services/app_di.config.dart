// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nana/core/network/network.dart' as _i554;
import 'package:nana/core/network/network_session.dart' as _i926;
import 'package:nana/core/services/register_modules.dart' as _i820;
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/product_listing_remote_data_source.dart'
    as _i546;
import 'package:nana/modules/product/product_listing/data/data_source/remote_data_source/product_listing_remote_data_source_imp.dart'
    as _i343;
import 'package:nana/modules/product/product_listing/data/repositories/product_listing_repo_imp.dart'
    as _i781;
import 'package:nana/modules/product/product_listing/domain/repositories/product_listing_repo.dart'
    as _i541;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i926.NetworkSession>(() => _i926.NetworkSession());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i546.ProductListingRemoteDataSource>(() =>
        _i343.ProductListingRemoteDataSourceImp(gh<_i554.NetworkSession>()));
    gh.singleton<_i541.ProductListingRepo>(() => _i781.ProductListingRepoImp(
        gh<_i546.ProductListingRemoteDataSource>()));
    return this;
  }
}

class _$RegisterModule extends _i820.RegisterModule {}
