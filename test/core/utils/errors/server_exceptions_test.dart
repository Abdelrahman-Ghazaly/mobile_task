import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:nana/core/constants/constants.dart';
import 'package:nana/core/utils/utils.dart';

import 'server_exceptions_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<DioException>(),
  MockSpec<Response>(),
])
void main() {
  group('ServerException', () {
    // Test individual exception types
    test('generic server exception is created correctly', () {
      const exception = ServerException('Generic error');
      expect(exception, isA<ServerException>());
      expect(exception.message, equals('Generic error'));
    });

    test('fetch data exception is created correctly', () {
      const exception = ServerException.fetchDataException();
      expect(exception, isA<FetchDataException>());
      expect(exception.message, equals('Failed to fetch data from the server.'));
    });

    test('bad certificate exception is created correctly', () {
      const exception = ServerException.badCertificateException();
      expect(exception, isA<BadCertificateException>());
      expect(exception.message, equals('Bad certificate detected. Unable to establish a secure connection.'));
    });

    test('bad request exception is created correctly', () {
      const exception = ServerException.badRequestException();
      expect(exception, isA<BadRequestException>());
      expect(exception.message, equals('Bad request. Please check your input and try again.'));
    });

    group('ServerException.fromDioException', () {
      late MockDioException mockDioException;
      late MockResponse mockResponse;

      setUp(() {
        mockDioException = MockDioException();
        mockResponse = MockResponse();
      });

      test('connection timeout maps to fetch data exception', () {
        when(mockDioException.type).thenReturn(DioExceptionType.connectionTimeout);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<FetchDataException>());
        expect(exception.message, equals('Failed to fetch data from the server.'));
      });

      test('send timeout maps to fetch data exception', () {
        when(mockDioException.type).thenReturn(DioExceptionType.sendTimeout);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<FetchDataException>());
        expect(exception.message, equals('Failed to fetch data from the server.'));
      });

      test('receive timeout maps to fetch data exception', () {
        when(mockDioException.type).thenReturn(DioExceptionType.receiveTimeout);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<FetchDataException>());
        expect(exception.message, equals('Failed to fetch data from the server.'));
      });

      test('bad response with bad request status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(StatusCode.badRequest);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<BadRequestException>());
        expect(exception.message, equals('Bad request. Please check your input and try again.'));
      });

      test('bad response with unauthorized status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(StatusCode.unauthorized);
        when(mockResponse.data).thenReturn({'message': 'Custom auth error'});

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<UnauthorizedException>());
        expect(exception.message, equals('Custom auth error'));
      });
      test('bad response with forbidden status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(StatusCode.forbidden);
        when(mockResponse.data).thenReturn({'message': 'Custom auth error'});

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<UnauthorizedException>());
        expect(exception.message, equals('Custom auth error'));
      });
      test('bad response with internalServer status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(StatusCode.internalServer);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<InternalServerErrorException>());
        expect(exception.message, equals('An internal server error occurred. Please try again later.'));
      });
      test('bad response with unprocessableEntity status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(StatusCode.unprocessableEntity);
        when(mockResponse.data).thenReturn({'message': 'Custom auth error'});

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<UnprocessableEntityException>());
        expect(exception.message, equals('Custom auth error'));
      });
      test('bad response with un-hanlded status code', () {
        when(mockDioException.type).thenReturn(DioExceptionType.badResponse);
        when(mockDioException.response).thenReturn(mockResponse);
        when(mockResponse.statusCode).thenReturn(305);
        when(mockResponse.data).thenReturn({'message': 'Custom auth error'});

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<ServerException>());
        expect(exception.message, equals('Custom auth error'));
      });

      test('connection error maps to no internet connection exception', () {
        when(mockDioException.type).thenReturn(DioExceptionType.connectionError);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<NoInternetConnectionException>());
        expect(exception.message, equals('No internet connection. Please check your network settings.'));
      });

      test('unknown type maps to generic server exception', () {
        when(mockDioException.type).thenReturn(DioExceptionType.unknown);

        final exception = ServerException.fromDioException(mockDioException);

        expect(exception, isA<ServerException>());
        expect(exception.message, equals('An unknown error occurred.'));
      });
    });
  });
}
