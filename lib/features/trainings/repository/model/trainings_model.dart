// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'trainings_model.freezed.dart';
part 'trainings_model.g.dart';

@freezed
abstract class TrainingsModel with _$TrainingsModel {
  const factory TrainingsModel({
    required int id,
    required String name,
    required String? image,
    @JsonKey(name: 'question_count') required int questionCount,
    @JsonKey(name: 'answer_count') required int answerCount,
    @JsonKey(name: 'user_sprint_status') required String? userSprintStatus,
  }) = _TrainingsModel;

  factory TrainingsModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingsModelFromJson(json);
}
