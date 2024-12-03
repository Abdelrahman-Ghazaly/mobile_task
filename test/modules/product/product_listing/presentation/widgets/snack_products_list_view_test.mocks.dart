// Mocks generated by Mockito 5.4.4 from annotations
// in nana/test/modules/product/product_listing/presentation/widgets/snack_products_list_view_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:flutter_bloc/flutter_bloc.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:nana/modules/product/product_listing/presentation/logic/snack_product/snack_product_cubit.dart'
    as _i2;

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

class _FakeSnackProductsState_0 extends _i1.SmartFake
    implements _i2.SnackProductsState {
  _FakeSnackProductsState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SnackProductsCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockSnackProductsCubit extends _i1.Mock
    implements _i2.SnackProductsCubit {
  @override
  _i2.SnackProductsState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeSnackProductsState_0(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _FakeSnackProductsState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.SnackProductsState);

  @override
  _i3.Stream<_i2.SnackProductsState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i3.Stream<_i2.SnackProductsState>.empty(),
        returnValueForMissingStub: _i3.Stream<_i2.SnackProductsState>.empty(),
      ) as _i3.Stream<_i2.SnackProductsState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i3.Future<void> fetchRecommendedProducts() => (super.noSuchMethod(
        Invocation.method(
          #fetchRecommendedProducts,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  void emit(_i2.SnackProductsState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i4.Change<_i2.SnackProductsState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i3.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
