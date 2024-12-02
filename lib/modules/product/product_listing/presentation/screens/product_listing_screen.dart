import 'package:flutter/material.dart';

import '../../../../../core/constants/app_keys.dart';
import '../../../../../core/services/services.dart';
import '../logic/most_use_poroduct/most_use_product_cubit.dart';
import '../logic/recommendation/recommendation_cubit.dart';
import '../logic/snack_product/snack_product_cubit.dart';
import '../widgets/widgets.dart';

class ProductListingScreen extends StatefulWidget {
  const ProductListingScreen({super.key});
  static const id = '/product_listing_screen';

  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      di<SnackProductsCubit>().fetchRecommendedProducts();
      di<MostUseProductsCubit>().fetchMostUseProducts();
      di<RecommendationCubit>().fetchRecommendedProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F5F0),
      appBar: AppBar(
        key: AppKeys.appbar,
        centerTitle: true,
        title: const Text('Products'),
        backgroundColor: const Color(0xFFFFECE5),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SnackProductsListView(
                key: AppKeys.snackProduct,
              ),
              SizedBox(height: 4),
              MostUseProductsListView(
                key: AppKeys.mostUseProducts,
              ),
              SizedBox(height: 4),
              RecomendationListView(
                key: AppKeys.recommendations,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
