part of 'most_use_product_cubit.dart';

@freezed
class MostUseProductsState with _$MostUseProductsState {
  const factory MostUseProductsState({
    @Default([]) List<Product> products,
    @Default(0) int currentPage,
    @Default(false) bool isLoading,
    @Default(false) bool isPaginationLoading,
    Failure? error,
  }) = _State;
}
