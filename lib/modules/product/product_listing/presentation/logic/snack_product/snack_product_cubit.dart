import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/utils/errors/failure.dart';
import '../../../../../../core/utils/interfaces/use_cases.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/use_cases/use_cases.dart';

part 'snack_product_cubit.freezed.dart';
part 'snack_product_state.dart';

@singleton
class SnackProductsCubit extends Cubit<SnackProductsState> {
  SnackProductsCubit(this._useCase) : super(const SnackProductsState.initial());
  final FetchSnackProductsUseCase _useCase;

  Future<void> fetchRecommendedProducts() async {
    emit(const SnackProductsState.loading());

    final response = await _useCase(NoParams());

    response.fold(
      (failure) => emit(SnackProductsState.error(failure: failure)),
      (products) => emit(SnackProductsState.success(products: products)),
    );
  }
}
