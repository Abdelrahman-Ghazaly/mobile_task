import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/use_cases/use_cases.dart';

part 'most_use_product_cubit.freezed.dart';
part 'most_use_product_state.dart';

const _limit = 6;

@singleton
class MostUseProductsCubit extends Cubit<MostUseProductsState> {
  MostUseProductsCubit(this._useCase) : super(const MostUseProductsState());
  final FetchMostUseProductsUseCase _useCase;

  Future<void> fetchMostUseProducts() async {
    late final FetchMostUseProductsParams params;
    if (state.products.isNotEmpty) {
      emit(state.copyWith(isPaginationLoading: true));
      params = FetchMostUseProductsParams(
        limit: _limit,
        offset: (state.currentPage + 1),
      );
    } else {
      emit(state.copyWith(isLoading: true));
      params = const FetchMostUseProductsParams(limit: _limit, offset: 0);
    }

    final response = await _useCase(params);

    response.fold(
      (failure) => emit(
        state.copyWith(error: failure, isLoading: false, isPaginationLoading: false),
      ),
      (products) {
        emit(
          MostUseProductsState(products: [...state.products, ...products], currentPage: params.offset),
        );
      },
    );
  }
}
