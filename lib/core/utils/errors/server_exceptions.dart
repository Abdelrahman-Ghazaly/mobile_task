import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/enum/enum.dart';

part 'server_exceptions.freezed.dart';

@freezed
class ServerException with _$ServerException implements Exception {
  const factory ServerException([String? message]) = _ServerException;

  const factory ServerException.fetchDataException([
    @Default('Failed to fetch data from the server.') String? message,
  ]) = FetchDataException;

  const factory ServerException.badCertificateException([
    @Default('Bad certificate detected. Unable to establish a secure connection.') String? message,
  ]) = BadCertificateException;

  const factory ServerException.badRequestException([
    @Default('Bad request. Please check your input and try again.') String? message,
  ]) = BadRequestException;

  const factory ServerException.unauthorizedException([
    @Default('Unauthorized access. Please check your credentials.') String? message,
  ]) = UnauthorizedException;

  const factory ServerException.notFoundException([
    @Default('Requested resource not found.') String? message,
  ]) = NotFoundException;

  const factory ServerException.conflictException([
    @Default('A conflict occurred. Please try again later.') String? message,
  ]) = ConflictException;

  const factory ServerException.noInternetConnectionException([
    @Default('No internet connection. Please check your network settings.') String? message,
  ]) = NoInternetConnectionException;

  const factory ServerException.unprocessableEntityException([
    @Default('Unprocessable entity. The request could not be processed.') String? message,
  ]) = UnprocessableEntityException;

  const factory ServerException.cacheException([
    @Default('Cache error occurred. Failed to retrieve data from cache.') String? message,
  ]) = CacheException;

  const factory ServerException.internalServerErrorException([
    @Default('An internal server error occurred. Please try again later.') String? message,
  ]) = InternalServerErrorException;

  factory ServerException.fromDioException(DioException exception) {
    final apiMessage = exception.response?.data?['message'] as String?;
    return switch (exception.type) {
      DioExceptionType.connectionTimeout => const ServerException.fetchDataException(),
      DioExceptionType.sendTimeout => const ServerException.fetchDataException(),
      DioExceptionType.receiveTimeout => const ServerException.fetchDataException(),
      DioExceptionType.badCertificate => const ServerException.badRequestException(),
      DioExceptionType.badResponse => switch (exception.response?.statusCode) {
          StatusCode.badRequest => const ServerException.badRequestException(),
          StatusCode.notFound => const ServerException.notFoundException(),
          StatusCode.conflict => const ServerException.conflictException(),
          StatusCode.unauthorized => ServerException.unauthorizedException(apiMessage ?? 'Unauthorized'),
          StatusCode.forbidden => ServerException.unauthorizedException(apiMessage ?? 'Unauthorized'),
          StatusCode.internalServer => const ServerException.internalServerErrorException(),
          StatusCode.unprocessableEntity => ServerException.unprocessableEntityException(apiMessage ?? 'Server Error'),
          _ => ServerException(apiMessage ?? 'Server Error')
        },
      DioExceptionType.cancel => const ServerException('Canceled'),
      DioExceptionType.connectionError => const ServerException.noInternetConnectionException(),
      DioExceptionType.unknown => const ServerException('An unknown error occurred.'),
    };
  }
}
