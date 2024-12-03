import '../constants/constants.dart';

abstract class NetworkRequest {
  String get endpoint;

  final String _baseUrl = 'https://api.escuelajs.co/api';

  final String _apiVersion = '/v1';

  String get baseUrl => '$_baseUrl$_apiVersion';

  HttpMethod get method;

  Map<String, dynamic> get body => {};

  Map<String, dynamic> get queryParameters => {};

  String? get authToken => null;

  Map<String, String> get headers => {};
}
