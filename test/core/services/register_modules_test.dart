import 'package:flutter_test/flutter_test.dart';
import 'package:nana/core/services/register_modules.dart';

void main() {
  group('RegisterModule', () {
    late _RegisterModule registerModule;

    setUp(() {
      registerModule = _RegisterModule();
    });

    test('dio instance is created with correct base options', () {
      // Get Dio instance
      final dio = registerModule.dio;

      // Verify Dio instance is not null
      expect(dio, isNotNull);

      // Check BaseOptions
      expect(dio.options, isNotNull);

      // Verify Content-Type header
      expect(dio.options.headers['Content-Type'], equals('application/json'));
    });
  });
}

class _RegisterModule extends RegisterModule {}
