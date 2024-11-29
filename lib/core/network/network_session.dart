import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:nana/core/network/network.dart';

import '../constants/constants.dart';
import '../services/services.dart';

@singleton
class NetworkSession {
  Future<T> request<T extends Mappable>({
    required NetworkRequest request,
  }) async {
    try {
      final url = '${request.baseUrl}${request.endpoint}';
      log('Api call: $url', name: 'NetworkSession.request');
      late final Response<Map<String, dynamic>> response;
      switch (request.method) {
        case HttpMethod.delete:
          response = await di<Dio>().delete<Map<String, dynamic>>(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.get:
          response = await di<Dio>().get<Map<String, dynamic>>(
            url,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.head:
          response = await di<Dio>().head<Map<String, dynamic>>(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.patch:
          response = await di<Dio>().patch<Map<String, dynamic>>(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.post:
          response = await di<Dio>().post<Map<String, dynamic>>(
            url,
            data: request.body,
            queryParameters: request.queryParameters,
            options: Options(headers: request.headers),
          );
        case HttpMethod.put:
          response = await di<Dio>().put<Map<String, dynamic>>(
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
        return Mappable.fromJson(json) as T;
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
