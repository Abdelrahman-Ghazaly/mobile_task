import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:dio/dio.dart';
import 'package:nana/core/constants/constants.dart';
import 'package:nana/core/network/network.dart';
import 'package:nana/core/services/services.dart';
import 'package:nana/core/utils/utils.dart';

import 'network_session_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  MockSpec<NetworkRequest>(),
])
void main() {
  late NetworkSession networkSession;
  MockDio mockDio = MockDio();
  late MockNetworkRequest mockRequest;

  setUp(() {
    mockDio = MockDio();
    mockRequest = MockNetworkRequest();

    di.registerLazySingleton<Dio>(() => mockDio);

    networkSession = NetworkSession();
  });

  tearDown(() {
    di.reset();
  });

  group('NetworkSession', () {
    final expectedResponse = Response(
      requestOptions: RequestOptions(path: '/user'),
      statusCode: 200,
      data: {'id': 1, 'name': 'John Doe'},
    );

    final exception = DioException(
      type: DioExceptionType.badResponse,
      response: Response(
        statusCode: StatusCode.badRequest,
        data: {'message': 'Bad Request Error'},
        requestOptions: RequestOptions(),
      ),
      requestOptions: RequestOptions(),
    );

    group('DELETE requests', () {
      test('successful DELETE request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.delete);

        when(
          mockDio.delete(
            any,
            data: anyNamed('data'),
            queryParameters: anyNamed('queryParameters'),
            options: anyNamed('options'),
          ),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.get);

        when(
          mockDio.delete(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('GET requests', () {
      test('successful GET request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.get);

        when(
          mockDio.get(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.get);

        when(
          mockDio.get(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('HEAD requests', () {
      test('successful HEAD request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.head);

        when(
          mockDio.head(
            any,
            data: anyNamed('data'),
            queryParameters: anyNamed('queryParameters'),
            options: anyNamed('options'),
          ),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.head);

        when(
          mockDio.head(
            any,
            data: anyNamed('data'),
            queryParameters: anyNamed('queryParameters'),
          ),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('PATCH requests', () {
      test('successful HEAD request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.patch);

        when(
          mockDio.patch(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.patch);

        when(
          mockDio.patch(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('POST requests', () {
      test('successful HEAD request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.post);

        when(
          mockDio.post(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.post);

        when(
          mockDio.post(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    group('PUT requests', () {
      test('successful PUT request', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.put);

        when(
          mockDio.put(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenAnswer((_) async => expectedResponse);

        final response = await networkSession.request(request: mockRequest);

        expect(response.statusCode, 200);
        expect(response.data, {'id': 1, 'name': 'John Doe'});
      });
      test('throws DioExceptions Caught by handleDioExcpetions on non 200 responses', () async {
        when(mockRequest.endpoint).thenReturn('/user');
        when(mockRequest.method).thenReturn(HttpMethod.put);

        when(
          mockDio.put(any,
              data: anyNamed('data'), queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
        ).thenThrow(exception);

        await expectLater(
          networkSession.request(request: mockRequest),
          throwsA(isA<ServerException>()),
        );
      });
    });

    test('request throws ServerException when response data is null', () async {
      // Arrange
      when(mockRequest.method).thenReturn(HttpMethod.get);
      when(mockRequest.baseUrl).thenReturn('https://api.example.com/v1');
      when(mockRequest.endpoint).thenReturn('/test');

      final mockResponse = Response(requestOptions: RequestOptions(path: '/test'), statusCode: 200, data: null);

      when(
        mockDio.get(any, queryParameters: anyNamed('queryParameters'), options: anyNamed('options')),
      ).thenAnswer((_) async => mockResponse);

      // Act & Assert
      expect(() async => await networkSession.request(request: mockRequest), throwsA(isA<ServerException>()));
    });

    test('request handles DioException correctly', () async {
      // Arrange
      when(mockRequest.method).thenReturn(HttpMethod.get);
      when(mockRequest.baseUrl).thenReturn('https://api.example.com/v1');
      when(mockRequest.endpoint).thenReturn('/test');

      final dioException = DioException(
          requestOptions: RequestOptions(path: '/test'),
          response: Response(requestOptions: RequestOptions(path: '/test'), statusCode: 404));

      when(mockDio.get(any, queryParameters: anyNamed('queryParameters'), options: anyNamed('options')))
          .thenThrow(dioException);

      // Act & Assert
      expect(() async => await networkSession.request(request: mockRequest), throwsA(isA<ServerException>()));
    });

    test('request handles generic exceptions', () async {
      // Arrange
      when(mockRequest.method).thenReturn(HttpMethod.get);
      when(mockRequest.baseUrl).thenReturn('https://api.example.com/v1');
      when(mockRequest.endpoint).thenReturn('/test');

      when(mockDio.get(any, queryParameters: anyNamed('queryParameters'), options: anyNamed('options')))
          .thenThrow(Exception('Generic error'));

      // Act & Assert
      expect(() async => await networkSession.request(request: mockRequest), throwsA(isA<ServerException>()));
    });
  });
}
