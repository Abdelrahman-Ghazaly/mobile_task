import 'package:go_router/go_router.dart';

import '../../modules/product/product_listing/presentation/screens/product_listing_screen.dart';
import '../../modules/product/product_listing/product_routes.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: ProductListingScreen.id,
    routes: [
      ...ProductRoutes().routes,
    ],
  );
}
