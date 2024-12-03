import 'package:go_router/go_router.dart';

import '../../../core/utils/interfaces/interfaces.dart';
import 'presentation/product_listing_routes.dart';

class ProductRoutes extends Router {
  @override
  List<GoRoute> get routes => [
        ...ProductListingRoutes().routes,
      ];
}
