import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/menu/food/repository/food_repository.dart';
import 'package:mega/features/menu/food/repository/model/food_model.dart';

part 'food_cubit.freezed.dart';
part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  final FoodRepository foodRepository;
  FoodCubit(this.foodRepository) : super(const FoodState.initial());

  Future<void> getFoods({
    String category = '',
    String query = '',
  }) async {
    emit(const FoodState.loading());
    try {
      final foods = await foodRepository.getFoods(
        category: category,
        query: query,
      );

      emit(FoodState.success(foods: foods));
    } on ServerException catch (e) {
      emit(FoodState.error(e.message ?? 'Server error'));
    }
  }
}
