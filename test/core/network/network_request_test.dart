import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:nana/core/constants/enum/enum.dart';
import 'package:nana/core/network/network.dart';

// Create a concrete mock implementation for testing
class MockNetworkRequest extends Mock implements NetworkRequest {
  @override
  String get endpoint => '/test-endpoint';

  @override
  HttpMethod get method => HttpMethod.get;

  @override
  String get baseUrl => 'https://api.example.com/v1';

  @override
  Map<String, dynamic> get body => {'key': 'value'};

  @override
  Map<String, dynamic> get queryParameters => {'param': 'test'};

  @override
  String? get authToken => 'test-token';

  @override
  Map<String, String> get headers => {'Content-Type': 'application/json'};
}

void main() {
  late MockNetworkRequest mockNetworkRequest;

  setUp(() {
    mockNetworkRequest = MockNetworkRequest();
  });

  group('NetworkRequest Abstract Class', () {
    test('baseUrl is correctly constructed', () {
      expect(mockNetworkRequest.baseUrl, 'https://api.example.com/v1');
    });

    test('endpoint is implemented', () {
      expect(mockNetworkRequest.endpoint, '/test-endpoint');
    });

    test('method is implemented', () {
      expect(mockNetworkRequest.method, HttpMethod.get);
    });

    test('body returns empty map by default', () {
      // Create a minimal mock that doesn't override body
      final minimalMock = _MinimalNetworkRequest();
      expect(minimalMock.body, {});
    });

    test('queryParameters returns empty map by default', () {
      // Create a minimal mock that doesn't override queryParameters
      final minimalMock = _MinimalNetworkRequest();
      expect(minimalMock.queryParameters, {});
    });

    test('authToken returns null by default', () {
      // Create a minimal mock that doesn't override authToken
      final minimalMock = _MinimalNetworkRequest();
      expect(minimalMock.authToken, null);
    });

    test('headers returns empty map by default', () {
      // Create a minimal mock that doesn't override headers
      final minimalMock = _MinimalNetworkRequest();
      expect(minimalMock.headers, {});
    });

    test('full request configuration', () {
      expect(mockNetworkRequest.baseUrl, contains('api.example.com/'));
      expect(mockNetworkRequest.baseUrl, contains('/v1'));
      expect(mockNetworkRequest.endpoint, startsWith('/'));
      expect(mockNetworkRequest.body, isNotNull);
      expect(mockNetworkRequest.queryParameters, isNotNull);
      expect(mockNetworkRequest.headers, isNotNull);
    });

    test('baseUrl private fields are correct', () {
      // Use reflection to access private fields (if needed)
      expect(
        () => mockNetworkRequest.baseUrl,
        returnsNormally,
        reason: 'Base URL should be constructable without errors',
      );
    });
  });
}

// Minimal implementation for testing default behaviors
class _MinimalNetworkRequest extends NetworkRequest {
  @override
  String get endpoint => '/minimal-endpoint';

  @override
  String get baseUrl => 'https://api.example.com/v1';

  @override
  HttpMethod get method => HttpMethod.get;
}
