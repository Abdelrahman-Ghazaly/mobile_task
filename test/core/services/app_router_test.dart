import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nana/core/services/services.dart';
import 'package:nana/modules/product/product_listing/product_routes.dart';

void main() {
  group('AppRouter', () {
    late GoRouter router;

    setUp(() {
      router = AppRouter.router;
    });

    test('router is initialized', () {
      expect(router, isNotNull);
    });
    test('routes are correctly configured', () {
      expect(router.configuration.routes, isNotEmpty);

      final productRoutesInstance = ProductRoutes();
      expect(
        router.configuration.routes.length,
        equals(productRoutesInstance.routes.length),
      );
    });
  });
}
