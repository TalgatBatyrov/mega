part of 'food_details_cubit.dart';

@freezed
class FoodDetailsState with _$FoodDetailsState {
  const factory FoodDetailsState.initial() = _Initial;
  const factory FoodDetailsState.loading() = _Loading;
  const factory FoodDetailsState.success(FoodDetailsModel foodDetails) =
      _Success;
  const factory FoodDetailsState.error() = _Error;
}
