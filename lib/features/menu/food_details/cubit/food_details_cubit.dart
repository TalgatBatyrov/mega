import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/menu/food_details/repository/food_details_repository.dart';
import 'package:mega/features/menu/food_details/repository/model/food_details_model.dart';

part 'food_details_cubit.freezed.dart';
part 'food_details_state.dart';

class FoodDetailsCubit extends Cubit<FoodDetailsState> {
  final FoodDetailsRepository _foodDetailsRepository;
  FoodDetailsCubit(this._foodDetailsRepository)
      : super(const FoodDetailsState.initial());

  Future<void> getFoodDetails(String id) async {
    emit(const FoodDetailsState.loading());
    try {
      final foodDetails = await _foodDetailsRepository.getFoodDetails(id: id);
      emit(FoodDetailsState.success(foodDetails));
    } catch (e) {
      emit(const FoodDetailsState.error());
    }
  }
}
