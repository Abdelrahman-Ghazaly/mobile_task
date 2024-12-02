import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/services.dart';
import '../logic/recommendation/recommendation_cubit.dart';
import 'product_list_view.dart';

class RecomendationListView extends StatelessWidget {
  const RecomendationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Recommendations',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          BlocBuilder<RecommendationCubit, RecommendationState>(
            bloc: di<RecommendationCubit>(),
            builder: (context, state) {
              return state.maybeWhen(
                error: (failure) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('An Error Occurred: ${failure.message}'),
                    ElevatedButton(
                      onPressed: () {
                        di<RecommendationCubit>().fetchRecommendedProducts();
                      },
                      child: const Text('Try Again'),
                    ),
                  ],
                ),
                success: (products) => ProductListView(products: products),
                orElse: () => const SizedBox(
                  height: 200,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
