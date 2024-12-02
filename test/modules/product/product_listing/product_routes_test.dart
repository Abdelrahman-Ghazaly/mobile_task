import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:nana/modules/product/product_listing/presentation/screens/product_listing_screen.dart';
import 'package:nana/modules/product/product_listing/product_routes.dart';

void main() {
  group('ProductRoutes', () {
    late ProductRoutes productRoutes;

    setUp(() {
      productRoutes = ProductRoutes();
    });

    test('should include routes from ProductListingRoutes', () {
      final routes = productRoutes.routes;

      expect(routes.isNotEmpty, true);

      expect(routes, isA<List<GoRoute>>());

      expect(routes.any((route) => route.path == ProductListingScreen.id), true);
    });
  });
}
