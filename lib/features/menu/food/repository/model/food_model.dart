import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_model.freezed.dart';
part 'food_model.g.dart';

@freezed
abstract class FoodModel with _$FoodModel {
  const factory FoodModel({
    required int id,
    required String category,
    required String name,
    required String? image,
  }) = _FoodModel;

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);
}
