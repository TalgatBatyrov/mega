part of 'food_cubit.dart';

@freezed
class FoodState with _$FoodState {
  const factory FoodState.initial() = _Initial;
  const factory FoodState.loading() = _Loading;
  const factory FoodState.success({required List<FoodModel> foods}) = _Success;
  const factory FoodState.error(String message) = _Error;
}
