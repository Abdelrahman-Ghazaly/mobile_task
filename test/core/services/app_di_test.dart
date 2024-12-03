import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:nana/core/services/services.dart';

void main() {
  setUpAll(() async {
    await injectDependencies();
  });

  group('Dependency Injection', () {
    test('should register dependencies in GetIt', () {
      expect(GetIt.instance.isRegistered<Dio>(), true);
    });

    test('should retrieve dependencies from GetIt', () {
      final yourDependency = GetIt.instance<Dio>();
      expect(yourDependency, isA<Dio>());
    });
  });
}
