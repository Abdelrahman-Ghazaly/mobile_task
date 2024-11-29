import '../constants/constants.dart';

abstract class NetworkRequest {
  String get endpoint;

  String get baseUrl => 'https://api.escuelajs.co/api';

  String get apiVersion => '/v1';

  HttpMethod get method;

  Map<String, dynamic> get body => {};

  Map<String, dynamic> get queryParameters => {};

  String? get authToken => null;

  Map<String, String> get headers => {};
}
