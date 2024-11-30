import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constants/constants.dart';
import '../services/services.dart';
import '../utils/errors/server_exceptions.dart';
import 'network.dart';

@singleton
class NetworkSession {
  Future<T> request<T extends MappableBase>({
    required NetworkRequest request,
  }) async {
    try {
      final url = '${request.baseUrl}${request.endpoint}';
      log('Api call: $url', name: 'NetworkSession.request');
      late final Response response;
      switch (request.method) {
        case HttpMethod.delete:
          response = await di<Dio>().delete(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.get:
          response = await di<Dio>().get(
            url,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.head:
          response = await di<Dio>().head(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.patch:
          response = await di<Dio>().patch(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.post:
          response = await di<Dio>().post(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.put:
          response = await di<Dio>().put(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
      }

      final json = response.data;

      if (json == null) {
        throw const ServerException.fetchDataException();
      } else {
        return MappableBase.fromJson(json) as T;
      }
    } on DioException catch (e, s) {
      log('A DioException has been caught', name: 'NetworkSession.request', error: e, stackTrace: s);
      throw ServerException.fromDioException(e);
    } on Exception catch (e, s) {
      log('An Exception has been caught', name: 'NetworkSession.request', error: e, stackTrace: s);
      throw ServerException(e.toString());
    }
  }
}
