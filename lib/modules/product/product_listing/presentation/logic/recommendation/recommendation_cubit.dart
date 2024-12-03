import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/utils/utils.dart';
import '../../../domain/entities/product.dart';
import '../../../domain/use_cases/use_cases.dart';

part 'recommendation_cubit.freezed.dart';
part 'recommendation_state.dart';

@singleton
class RecommendationCubit extends Cubit<RecommendationState> {
  RecommendationCubit(this._useCase) : super(const RecommendationState.initial());
  final FetchRecommendedProductsUseCase _useCase;

  Future<void> fetchRecommendedProducts() async {
    emit(const RecommendationState.loading());

    final response = await _useCase(NoParams());

    response.fold(
      (failure) => emit(RecommendationState.error(failure: failure)),
      (products) => emit(RecommendationState.success(products: products)),
    );
  }
}
