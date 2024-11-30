import 'package:freezed_annotation/freezed_annotation.dart';

import 'server_exceptions.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.generic([String? message]) = GenericFailure;
  const factory Failure.server([String? message]) = ServerFailure;
  const factory Failure.network([String? message]) = NetworkFailure;
  const factory Failure.authentication([String? message]) = AuthenticationFailure;
  const factory Failure.validation([String? message]) = ValidationFailure;

  factory Failure.fromException(dynamic exception) {
    switch (exception.runtimeType) {
      case ServerException _:
        return switch (exception) {
          FetchDataException() => const Failure.network('Failed to fetch data.'),
          BadRequestException() => const Failure.validation('Bad request. Please check your input.'),
          UnauthorizedException() => const Failure.authentication('Unauthorized access.'),
          NotFoundException() => const Failure.server('Resource not found.'),
          ConflictException() => const Failure.server('Conflict error occurred.'),
          InternalServerErrorException() => const Failure.server('Internal server error.'),
          NoInternetConnectionException() => const Failure.network('No internet connection.'),
          _ => Failure.server(exception.message ?? 'Unknown server error.')
        };
      case _:
        return Failure.generic(exception.toString());
    }
  }
}
