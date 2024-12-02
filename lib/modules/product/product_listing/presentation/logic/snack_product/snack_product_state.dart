part of 'snack_product_cubit.dart';

@freezed
class SnackProductsState with _$SnackProductsState {
  const factory SnackProductsState.initial() = Initial;
  const factory SnackProductsState.loading() = Loading;
  const factory SnackProductsState.error({required Failure failure}) = Error;
  const factory SnackProductsState.success({required List<Product> products}) = Success;
}
