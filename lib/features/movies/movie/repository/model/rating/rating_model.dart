// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
abstract class RatingModel with _$RatingModel {
  const factory RatingModel({
    required double kp,
    required double imdb,
    required int filmCritics,
    required int russianFilmCritics,
    @JsonKey(name: 'await') required int? wait,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}
