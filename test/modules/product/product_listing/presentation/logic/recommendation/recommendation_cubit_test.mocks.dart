// Mocks generated by Mockito 5.4.4 from annotations
// in nana/test/modules/product/product_listing/presentation/logic/recommendation/recommendation_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:fpdart/fpdart.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i8;
import 'package:nana/core/utils/utils.dart' as _i6;
import 'package:nana/modules/product/product_listing/domain/entities/product.dart'
    as _i7;
import 'package:nana/modules/product/product_listing/domain/repositories/product_listing_repo.dart'
    as _i2;
import 'package:nana/modules/product/product_listing/domain/use_cases/fetch_recommended_products_use_case.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeProductListingRepo_0 extends _i1.SmartFake
    implements _i2.ProductListingRepo {
  _FakeProductListingRepo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [FetchRecommendedProductsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockFetchRecommendedProductsUseCase extends _i1.Mock
    implements _i3.FetchRecommendedProductsUseCase {
  @override
  _i2.ProductListingRepo get repo => (super.noSuchMethod(
        Invocation.getter(#repo),
        returnValue: _FakeProductListingRepo_0(
          this,
          Invocation.getter(#repo),
        ),
        returnValueForMissingStub: _FakeProductListingRepo_0(
          this,
          Invocation.getter(#repo),
        ),
      ) as _i2.ProductListingRepo);

  @override
  _i4.Future<_i5.Either<_i6.Failure, List<_i7.Product>>> call(
          _i6.NoParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue:
            _i4.Future<_i5.Either<_i6.Failure, List<_i7.Product>>>.value(
                _i8.dummyValue<_i5.Either<_i6.Failure, List<_i7.Product>>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
        returnValueForMissingStub:
            _i4.Future<_i5.Either<_i6.Failure, List<_i7.Product>>>.value(
                _i8.dummyValue<_i5.Either<_i6.Failure, List<_i7.Product>>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i4.Future<_i5.Either<_i6.Failure, List<_i7.Product>>>);
}
