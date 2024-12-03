import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/app_di.dart';
import '../logic/most_use_poroduct/most_use_product_cubit.dart';
import 'widgets.dart';

class MostUseProductsListView extends StatelessWidget {
  const MostUseProductsListView({super.key});

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
              'Most use products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 4),
          BlocBuilder<MostUseProductsCubit, MostUseProductsState>(
            bloc: di<MostUseProductsCubit>(),
            builder: (context, state) {
              if (state.isLoading) {
                return const SizedBox(
                  height: 200,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state.error != null) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('An Error Occurred: ${state.error?.message}'),
                    ElevatedButton(
                      onPressed: () {
                        di<MostUseProductsCubit>().fetchMostUseProducts();
                      },
                      child: const Text('Try Again'),
                    ),
                  ],
                );
              }
              return Column(
                children: [
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: List.generate(
                      state.products.length,
                      (index) => ProductListItem(product: state.products[index]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => di<MostUseProductsCubit>().fetchMostUseProducts(),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      height: 48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox.square(
                            dimension: 10,
                            child: Visibility(
                              visible: state.isPaginationLoading,
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Text(
                            'Load More',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          const SizedBox(width: 14)
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
