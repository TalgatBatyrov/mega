import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_details_model.freezed.dart';
part 'food_details_model.g.dart';

@freezed
abstract class FoodDetailsModel with _$FoodDetailsModel {
  const factory FoodDetailsModel({
    required int id,
    required String category,
    required String name,
    required String? image,
    required String content,
  }) = _FoodDetailsModel;

  factory FoodDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$FoodDetailsModelFromJson(json);
}
