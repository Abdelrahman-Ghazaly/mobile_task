// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServerException {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServerExceptionCopyWith<ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res, ServerException>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res, $Val extends ServerException>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$ServerExceptionImplCopyWith(_$ServerExceptionImpl value,
          $Res Function(_$ServerExceptionImpl) then) =
      __$$ServerExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ServerExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$ServerExceptionImpl>
    implements _$$ServerExceptionImplCopyWith<$Res> {
  __$$ServerExceptionImplCopyWithImpl(
      _$ServerExceptionImpl _value, $Res Function(_$ServerExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ServerExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerExceptionImpl
    with DiagnosticableTreeMixin
    implements _ServerException {
  const _$ServerExceptionImpl([this.message]);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      __$$ServerExceptionImplCopyWithImpl<_$ServerExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return $default(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return $default?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements ServerException {
  const factory _ServerException([final String? message]) =
      _$ServerExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServerExceptionImplCopyWith<_$ServerExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchDataExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$FetchDataExceptionImplCopyWith(_$FetchDataExceptionImpl value,
          $Res Function(_$FetchDataExceptionImpl) then) =
      __$$FetchDataExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FetchDataExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$FetchDataExceptionImpl>
    implements _$$FetchDataExceptionImplCopyWith<$Res> {
  __$$FetchDataExceptionImplCopyWithImpl(_$FetchDataExceptionImpl _value,
      $Res Function(_$FetchDataExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FetchDataExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FetchDataExceptionImpl
    with DiagnosticableTreeMixin
    implements FetchDataException {
  const _$FetchDataExceptionImpl(
      [this.message = 'Failed to fetch data from the server.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.fetchDataException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException.fetchDataException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchDataExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchDataExceptionImplCopyWith<_$FetchDataExceptionImpl> get copyWith =>
      __$$FetchDataExceptionImplCopyWithImpl<_$FetchDataExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return fetchDataException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return fetchDataException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (fetchDataException != null) {
      return fetchDataException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return fetchDataException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return fetchDataException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (fetchDataException != null) {
      return fetchDataException(this);
    }
    return orElse();
  }
}

abstract class FetchDataException implements ServerException {
  const factory FetchDataException([final String? message]) =
      _$FetchDataExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchDataExceptionImplCopyWith<_$FetchDataExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadCertificateExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$BadCertificateExceptionImplCopyWith(
          _$BadCertificateExceptionImpl value,
          $Res Function(_$BadCertificateExceptionImpl) then) =
      __$$BadCertificateExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BadCertificateExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$BadCertificateExceptionImpl>
    implements _$$BadCertificateExceptionImplCopyWith<$Res> {
  __$$BadCertificateExceptionImplCopyWithImpl(
      _$BadCertificateExceptionImpl _value,
      $Res Function(_$BadCertificateExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadCertificateExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadCertificateExceptionImpl
    with DiagnosticableTreeMixin
    implements BadCertificateException {
  const _$BadCertificateExceptionImpl(
      [this.message =
          'Bad certificate detected. Unable to establish a secure connection.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.badCertificateException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerException.badCertificateException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadCertificateExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadCertificateExceptionImplCopyWith<_$BadCertificateExceptionImpl>
      get copyWith => __$$BadCertificateExceptionImplCopyWithImpl<
          _$BadCertificateExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return badCertificateException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return badCertificateException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (badCertificateException != null) {
      return badCertificateException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return badCertificateException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return badCertificateException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (badCertificateException != null) {
      return badCertificateException(this);
    }
    return orElse();
  }
}

abstract class BadCertificateException implements ServerException {
  const factory BadCertificateException([final String? message]) =
      _$BadCertificateExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadCertificateExceptionImplCopyWith<_$BadCertificateExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BadRequestExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$BadRequestExceptionImplCopyWith(_$BadRequestExceptionImpl value,
          $Res Function(_$BadRequestExceptionImpl) then) =
      __$$BadRequestExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BadRequestExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$BadRequestExceptionImpl>
    implements _$$BadRequestExceptionImplCopyWith<$Res> {
  __$$BadRequestExceptionImplCopyWithImpl(_$BadRequestExceptionImpl _value,
      $Res Function(_$BadRequestExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BadRequestExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequestExceptionImpl
    with DiagnosticableTreeMixin
    implements BadRequestException {
  const _$BadRequestExceptionImpl(
      [this.message = 'Bad request. Please check your input and try again.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.badRequestException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException.badRequestException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadRequestExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BadRequestExceptionImplCopyWith<_$BadRequestExceptionImpl> get copyWith =>
      __$$BadRequestExceptionImplCopyWithImpl<_$BadRequestExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return badRequestException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return badRequestException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (badRequestException != null) {
      return badRequestException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return badRequestException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return badRequestException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (badRequestException != null) {
      return badRequestException(this);
    }
    return orElse();
  }
}

abstract class BadRequestException implements ServerException {
  const factory BadRequestException([final String? message]) =
      _$BadRequestExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BadRequestExceptionImplCopyWith<_$BadRequestExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$UnauthorizedExceptionImplCopyWith(
          _$UnauthorizedExceptionImpl value,
          $Res Function(_$UnauthorizedExceptionImpl) then) =
      __$$UnauthorizedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnauthorizedExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$UnauthorizedExceptionImpl>
    implements _$$UnauthorizedExceptionImplCopyWith<$Res> {
  __$$UnauthorizedExceptionImplCopyWithImpl(_$UnauthorizedExceptionImpl _value,
      $Res Function(_$UnauthorizedExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnauthorizedExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthorizedExceptionImpl
    with DiagnosticableTreeMixin
    implements UnauthorizedException {
  const _$UnauthorizedExceptionImpl(
      [this.message = 'Unauthorized access. Please check your credentials.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.unauthorizedException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerException.unauthorizedException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnauthorizedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => __$$UnauthorizedExceptionImplCopyWithImpl<
          _$UnauthorizedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return unauthorizedException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return unauthorizedException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (unauthorizedException != null) {
      return unauthorizedException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return unauthorizedException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return unauthorizedException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (unauthorizedException != null) {
      return unauthorizedException(this);
    }
    return orElse();
  }
}

abstract class UnauthorizedException implements ServerException {
  const factory UnauthorizedException([final String? message]) =
      _$UnauthorizedExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnauthorizedExceptionImplCopyWith<_$UnauthorizedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$NotFoundExceptionImplCopyWith(_$NotFoundExceptionImpl value,
          $Res Function(_$NotFoundExceptionImpl) then) =
      __$$NotFoundExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$NotFoundExceptionImpl>
    implements _$$NotFoundExceptionImplCopyWith<$Res> {
  __$$NotFoundExceptionImplCopyWithImpl(_$NotFoundExceptionImpl _value,
      $Res Function(_$NotFoundExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFoundExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundExceptionImpl
    with DiagnosticableTreeMixin
    implements NotFoundException {
  const _$NotFoundExceptionImpl(
      [this.message = 'Requested resource not found.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.notFoundException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException.notFoundException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      __$$NotFoundExceptionImplCopyWithImpl<_$NotFoundExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return notFoundException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return notFoundException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return notFoundException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return notFoundException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(this);
    }
    return orElse();
  }
}

abstract class NotFoundException implements ServerException {
  const factory NotFoundException([final String? message]) =
      _$NotFoundExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConflictExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$ConflictExceptionImplCopyWith(_$ConflictExceptionImpl value,
          $Res Function(_$ConflictExceptionImpl) then) =
      __$$ConflictExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConflictExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$ConflictExceptionImpl>
    implements _$$ConflictExceptionImplCopyWith<$Res> {
  __$$ConflictExceptionImplCopyWithImpl(_$ConflictExceptionImpl _value,
      $Res Function(_$ConflictExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConflictExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConflictExceptionImpl
    with DiagnosticableTreeMixin
    implements ConflictException {
  const _$ConflictExceptionImpl(
      [this.message = 'A conflict occurred. Please try again later.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.conflictException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException.conflictException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConflictExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConflictExceptionImplCopyWith<_$ConflictExceptionImpl> get copyWith =>
      __$$ConflictExceptionImplCopyWithImpl<_$ConflictExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return conflictException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return conflictException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return conflictException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return conflictException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (conflictException != null) {
      return conflictException(this);
    }
    return orElse();
  }
}

abstract class ConflictException implements ServerException {
  const factory ConflictException([final String? message]) =
      _$ConflictExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConflictExceptionImplCopyWith<_$ConflictExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetConnectionExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$NoInternetConnectionExceptionImplCopyWith(
          _$NoInternetConnectionExceptionImpl value,
          $Res Function(_$NoInternetConnectionExceptionImpl) then) =
      __$$NoInternetConnectionExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoInternetConnectionExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res,
        _$NoInternetConnectionExceptionImpl>
    implements _$$NoInternetConnectionExceptionImplCopyWith<$Res> {
  __$$NoInternetConnectionExceptionImplCopyWithImpl(
      _$NoInternetConnectionExceptionImpl _value,
      $Res Function(_$NoInternetConnectionExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoInternetConnectionExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoInternetConnectionExceptionImpl
    with DiagnosticableTreeMixin
    implements NoInternetConnectionException {
  const _$NoInternetConnectionExceptionImpl(
      [this.message =
          'No internet connection. Please check your network settings.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.noInternetConnectionException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerException.noInternetConnectionException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetConnectionExceptionImplCopyWith<
          _$NoInternetConnectionExceptionImpl>
      get copyWith => __$$NoInternetConnectionExceptionImplCopyWithImpl<
          _$NoInternetConnectionExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return noInternetConnectionException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return noInternetConnectionException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (noInternetConnectionException != null) {
      return noInternetConnectionException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return noInternetConnectionException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return noInternetConnectionException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (noInternetConnectionException != null) {
      return noInternetConnectionException(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnectionException implements ServerException {
  const factory NoInternetConnectionException([final String? message]) =
      _$NoInternetConnectionExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoInternetConnectionExceptionImplCopyWith<
          _$NoInternetConnectionExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnprocessableEntityExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$UnprocessableEntityExceptionImplCopyWith(
          _$UnprocessableEntityExceptionImpl value,
          $Res Function(_$UnprocessableEntityExceptionImpl) then) =
      __$$UnprocessableEntityExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnprocessableEntityExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res,
        _$UnprocessableEntityExceptionImpl>
    implements _$$UnprocessableEntityExceptionImplCopyWith<$Res> {
  __$$UnprocessableEntityExceptionImplCopyWithImpl(
      _$UnprocessableEntityExceptionImpl _value,
      $Res Function(_$UnprocessableEntityExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnprocessableEntityExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnprocessableEntityExceptionImpl
    with DiagnosticableTreeMixin
    implements UnprocessableEntityException {
  const _$UnprocessableEntityExceptionImpl(
      [this.message =
          'Unprocessable entity. The request could not be processed.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.unprocessableEntityException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerException.unprocessableEntityException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnprocessableEntityExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnprocessableEntityExceptionImplCopyWith<
          _$UnprocessableEntityExceptionImpl>
      get copyWith => __$$UnprocessableEntityExceptionImplCopyWithImpl<
          _$UnprocessableEntityExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return unprocessableEntityException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return unprocessableEntityException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (unprocessableEntityException != null) {
      return unprocessableEntityException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return unprocessableEntityException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return unprocessableEntityException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (unprocessableEntityException != null) {
      return unprocessableEntityException(this);
    }
    return orElse();
  }
}

abstract class UnprocessableEntityException implements ServerException {
  const factory UnprocessableEntityException([final String? message]) =
      _$UnprocessableEntityExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnprocessableEntityExceptionImplCopyWith<
          _$UnprocessableEntityExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$CacheExceptionImplCopyWith(_$CacheExceptionImpl value,
          $Res Function(_$CacheExceptionImpl) then) =
      __$$CacheExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CacheExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res, _$CacheExceptionImpl>
    implements _$$CacheExceptionImplCopyWith<$Res> {
  __$$CacheExceptionImplCopyWithImpl(
      _$CacheExceptionImpl _value, $Res Function(_$CacheExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CacheExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CacheExceptionImpl
    with DiagnosticableTreeMixin
    implements CacheException {
  const _$CacheExceptionImpl(
      [this.message =
          'Cache error occurred. Failed to retrieve data from cache.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.cacheException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerException.cacheException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      __$$CacheExceptionImplCopyWithImpl<_$CacheExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return cacheException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return cacheException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException implements ServerException {
  const factory CacheException([final String? message]) = _$CacheExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CacheExceptionImplCopyWith<_$CacheExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalServerErrorExceptionImplCopyWith<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  factory _$$InternalServerErrorExceptionImplCopyWith(
          _$InternalServerErrorExceptionImpl value,
          $Res Function(_$InternalServerErrorExceptionImpl) then) =
      __$$InternalServerErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InternalServerErrorExceptionImplCopyWithImpl<$Res>
    extends _$ServerExceptionCopyWithImpl<$Res,
        _$InternalServerErrorExceptionImpl>
    implements _$$InternalServerErrorExceptionImplCopyWith<$Res> {
  __$$InternalServerErrorExceptionImplCopyWithImpl(
      _$InternalServerErrorExceptionImpl _value,
      $Res Function(_$InternalServerErrorExceptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InternalServerErrorExceptionImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InternalServerErrorExceptionImpl
    with DiagnosticableTreeMixin
    implements InternalServerErrorException {
  const _$InternalServerErrorExceptionImpl(
      [this.message =
          'An internal server error occurred. Please try again later.']);

  @override
  @JsonKey()
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerException.internalServerErrorException(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ServerException.internalServerErrorException'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalServerErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalServerErrorExceptionImplCopyWith<
          _$InternalServerErrorExceptionImpl>
      get copyWith => __$$InternalServerErrorExceptionImplCopyWithImpl<
          _$InternalServerErrorExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? message) $default, {
    required TResult Function(String? message) fetchDataException,
    required TResult Function(String? message) badCertificateException,
    required TResult Function(String? message) badRequestException,
    required TResult Function(String? message) unauthorizedException,
    required TResult Function(String? message) notFoundException,
    required TResult Function(String? message) conflictException,
    required TResult Function(String? message) noInternetConnectionException,
    required TResult Function(String? message) unprocessableEntityException,
    required TResult Function(String? message) cacheException,
    required TResult Function(String? message) internalServerErrorException,
  }) {
    return internalServerErrorException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? message)? $default, {
    TResult? Function(String? message)? fetchDataException,
    TResult? Function(String? message)? badCertificateException,
    TResult? Function(String? message)? badRequestException,
    TResult? Function(String? message)? unauthorizedException,
    TResult? Function(String? message)? notFoundException,
    TResult? Function(String? message)? conflictException,
    TResult? Function(String? message)? noInternetConnectionException,
    TResult? Function(String? message)? unprocessableEntityException,
    TResult? Function(String? message)? cacheException,
    TResult? Function(String? message)? internalServerErrorException,
  }) {
    return internalServerErrorException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? message)? $default, {
    TResult Function(String? message)? fetchDataException,
    TResult Function(String? message)? badCertificateException,
    TResult Function(String? message)? badRequestException,
    TResult Function(String? message)? unauthorizedException,
    TResult Function(String? message)? notFoundException,
    TResult Function(String? message)? conflictException,
    TResult Function(String? message)? noInternetConnectionException,
    TResult Function(String? message)? unprocessableEntityException,
    TResult Function(String? message)? cacheException,
    TResult Function(String? message)? internalServerErrorException,
    required TResult orElse(),
  }) {
    if (internalServerErrorException != null) {
      return internalServerErrorException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ServerException value) $default, {
    required TResult Function(FetchDataException value) fetchDataException,
    required TResult Function(BadCertificateException value)
        badCertificateException,
    required TResult Function(BadRequestException value) badRequestException,
    required TResult Function(UnauthorizedException value)
        unauthorizedException,
    required TResult Function(NotFoundException value) notFoundException,
    required TResult Function(ConflictException value) conflictException,
    required TResult Function(NoInternetConnectionException value)
        noInternetConnectionException,
    required TResult Function(UnprocessableEntityException value)
        unprocessableEntityException,
    required TResult Function(CacheException value) cacheException,
    required TResult Function(InternalServerErrorException value)
        internalServerErrorException,
  }) {
    return internalServerErrorException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ServerException value)? $default, {
    TResult? Function(FetchDataException value)? fetchDataException,
    TResult? Function(BadCertificateException value)? badCertificateException,
    TResult? Function(BadRequestException value)? badRequestException,
    TResult? Function(UnauthorizedException value)? unauthorizedException,
    TResult? Function(NotFoundException value)? notFoundException,
    TResult? Function(ConflictException value)? conflictException,
    TResult? Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult? Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult? Function(CacheException value)? cacheException,
    TResult? Function(InternalServerErrorException value)?
        internalServerErrorException,
  }) {
    return internalServerErrorException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ServerException value)? $default, {
    TResult Function(FetchDataException value)? fetchDataException,
    TResult Function(BadCertificateException value)? badCertificateException,
    TResult Function(BadRequestException value)? badRequestException,
    TResult Function(UnauthorizedException value)? unauthorizedException,
    TResult Function(NotFoundException value)? notFoundException,
    TResult Function(ConflictException value)? conflictException,
    TResult Function(NoInternetConnectionException value)?
        noInternetConnectionException,
    TResult Function(UnprocessableEntityException value)?
        unprocessableEntityException,
    TResult Function(CacheException value)? cacheException,
    TResult Function(InternalServerErrorException value)?
        internalServerErrorException,
    required TResult orElse(),
  }) {
    if (internalServerErrorException != null) {
      return internalServerErrorException(this);
    }
    return orElse();
  }
}

abstract class InternalServerErrorException implements ServerException {
  const factory InternalServerErrorException([final String? message]) =
      _$InternalServerErrorExceptionImpl;

  @override
  String? get message;

  /// Create a copy of ServerException
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalServerErrorExceptionImplCopyWith<
          _$InternalServerErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
