import 'package:go_router/go_router.dart';

import '../../../../core/utils/interfaces/interfaces.dart';
import 'screens/product_listing_screen.dart';

class ProductListingRoutes extends Router {
  @override
  List<GoRoute> get routes => [
        GoRoute(
          path: ProductListingScreen.id,
          name: ProductListingScreen.id,
          builder: (context, state) => const ProductListingScreen(),
        ),
      ];
}
