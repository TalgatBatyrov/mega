// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/trainings/training_details/repository/model/sprint_model/sprint_model.dart';

part 'training_details_model.freezed.dart';
part 'training_details_model.g.dart';

@freezed
abstract class TrainingDetailsModel with _$TrainingDetailsModel {
  const factory TrainingDetailsModel({
    required int id,
    required SprintModel? sprint,
    required String name,
    required String content,
    required String? image,
    @JsonKey(name: 'passing_percentage') required int passingPercentage,
    @JsonKey(name: 'newbie_required') required bool newbieRequired,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _TrainingDetailsModel;

  factory TrainingDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TrainingDetailsModelFromJson(json);
}
