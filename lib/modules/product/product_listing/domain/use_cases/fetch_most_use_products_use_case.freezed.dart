// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fetch_most_use_products_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FetchMostUseProductsParams {
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  /// Create a copy of FetchMostUseProductsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FetchMostUseProductsParamsCopyWith<FetchMostUseProductsParams>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FetchMostUseProductsParamsCopyWith<$Res> {
  factory $FetchMostUseProductsParamsCopyWith(FetchMostUseProductsParams value,
          $Res Function(FetchMostUseProductsParams) then) =
      _$FetchMostUseProductsParamsCopyWithImpl<$Res,
          FetchMostUseProductsParams>;
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class _$FetchMostUseProductsParamsCopyWithImpl<$Res,
        $Val extends FetchMostUseProductsParams>
    implements $FetchMostUseProductsParamsCopyWith<$Res> {
  _$FetchMostUseProductsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FetchMostUseProductsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PramasImplCopyWith<$Res>
    implements $FetchMostUseProductsParamsCopyWith<$Res> {
  factory _$$PramasImplCopyWith(
          _$PramasImpl value, $Res Function(_$PramasImpl) then) =
      __$$PramasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int limit, int offset});
}

/// @nodoc
class __$$PramasImplCopyWithImpl<$Res>
    extends _$FetchMostUseProductsParamsCopyWithImpl<$Res, _$PramasImpl>
    implements _$$PramasImplCopyWith<$Res> {
  __$$PramasImplCopyWithImpl(
      _$PramasImpl _value, $Res Function(_$PramasImpl) _then)
      : super(_value, _then);

  /// Create a copy of FetchMostUseProductsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$PramasImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PramasImpl implements _Pramas {
  const _$PramasImpl({required this.limit, required this.offset});

  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'FetchMostUseProductsParams(limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PramasImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset);

  /// Create a copy of FetchMostUseProductsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PramasImplCopyWith<_$PramasImpl> get copyWith =>
      __$$PramasImplCopyWithImpl<_$PramasImpl>(this, _$identity);
}

abstract class _Pramas implements FetchMostUseProductsParams {
  const factory _Pramas({required final int limit, required final int offset}) =
      _$PramasImpl;

  @override
  int get limit;
  @override
  int get offset;

  /// Create a copy of FetchMostUseProductsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PramasImplCopyWith<_$PramasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
