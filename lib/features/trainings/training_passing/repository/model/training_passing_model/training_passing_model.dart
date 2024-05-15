// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/trainings/training_passing/repository/model/answer_model/answer_model.dart';

part 'training_passing_model.freezed.dart';
part 'training_passing_model.g.dart';

@freezed
abstract class TrainingPassingModel with _$TrainingPassingModel {
  const factory TrainingPassingModel({
    required int id,
    required List<AnswerModel> answers,
    required String name,
    required String type,
    required String description,
    required String? image,
    required int quiz,
  }) = _TrainingPassingModel;

  factory TrainingPassingModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingPassingModelFromJson(json);
}
