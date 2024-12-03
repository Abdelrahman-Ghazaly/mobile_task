import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/utils/utils.dart';

void main() {
  group('Failure', () {
    test('generic failure is created correctly', () {
      const failure = Failure.generic('Test error');
      expect(failure, isA<Failure>());
      expect(
          failure.when(
            generic: (message) => message,
            server: (_) => null,
            network: (_) => null,
            authentication: (_) => null,
            validation: (_) => null,
          ),
          equals('Test error'));
    });

    test('server failure is created correctly', () {
      const failure = Failure.server('Server error');
      expect(failure, isA<Failure>());
      expect(
          failure.when(
            server: (message) => message,
            generic: (_) => null,
            network: (_) => null,
            authentication: (_) => null,
            validation: (_) => null,
          ),
          equals('Server error'));
    });

    test('network failure is created correctly', () {
      const failure = Failure.network('Network error');
      expect(failure, isA<Failure>());
      expect(
          failure.when(
            network: (message) => message,
            generic: (_) => null,
            server: (_) => null,
            authentication: (_) => null,
            validation: (_) => null,
          ),
          equals('Network error'));
    });

    test('authentication failure is created correctly', () {
      const failure = Failure.authentication('Auth error');
      expect(failure, isA<Failure>());
      expect(
          failure.when(
            authentication: (message) => message,
            generic: (_) => null,
            server: (_) => null,
            network: (_) => null,
            validation: (_) => null,
          ),
          equals('Auth error'));
    });

    test('validation failure is created correctly', () {
      const failure = Failure.validation('Validation error');
      expect(failure, isA<Failure>());
      expect(
          failure.when(
            validation: (message) => message,
            generic: (_) => null,
            server: (_) => null,
            network: (_) => null,
            authentication: (_) => null,
          ),
          equals('Validation error'));
    });

    group('Failure.fromException', () {
      test('FetchDataException maps to network failure', () {
        const exception = FetchDataException('Fetch failed');
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(failure.message, equals('Failed to fetch data.'));
      });

      test('BadRequestException maps to validation failure', () {
        const exception = BadRequestException('Invalid input');
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(
            failure.when(
              validation: (message) => message,
              generic: (_) => null,
              server: (_) => null,
              authentication: (_) => null,
              network: (_) => null,
            ),
            equals('Bad request. Please check your input.'));
      });

      test('UnauthorizedException maps to authentication failure', () {
        const exception = UnauthorizedException('Not authorized');
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(
            failure.when(
              authentication: (message) => message,
              generic: (_) => null,
              server: (_) => null,
              network: (_) => null,
              validation: (_) => null,
            ),
            equals('Unauthorized access.'));
      });

      test('NotFoundException maps to server failure', () {
        const exception = NotFoundException('Resource missing');
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(
            failure.when(
              server: (message) => message,
              generic: (_) => null,
              network: (_) => null,
              authentication: (_) => null,
              validation: (_) => null,
            ),
            equals('Resource not found.'));
      });

      test('NoInternetConnectionException maps to network failure', () {
        const exception = NoInternetConnectionException();
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(
            failure.when(
              network: (message) => message,
              generic: (_) => null,
              server: (_) => null,
              authentication: (_) => null,
              validation: (_) => null,
            ),
            equals('No internet connection.'));
      });

      test('Unknown exception maps to generic failure', () {
        final exception = Exception('Unknown error');
        final failure = Failure.fromException(exception);

        expect(failure, isA<Failure>());
        expect(
            failure.when(
              generic: (message) => message,
              server: (_) => null,
              network: (_) => null,
              authentication: (_) => null,
              validation: (_) => null,
            ),
            equals(exception.toString()));
      });
    });
  });
}
