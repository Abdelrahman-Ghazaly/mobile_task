part of 'recommendation_cubit.dart';

@freezed
class RecommendationState with _$RecommendationState {
  const factory RecommendationState.initial() = _Initial;
  const factory RecommendationState.loading() = _Loading;
  const factory RecommendationState.error({required Failure failure}) = _Error;
  const factory RecommendationState.success({required List<Product> products}) = _Success;
}
