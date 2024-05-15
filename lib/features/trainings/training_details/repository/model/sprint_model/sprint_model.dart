// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprint_model.freezed.dart';
part 'sprint_model.g.dart';

@freezed
abstract class SprintModel with _$SprintModel {
  const factory SprintModel({
    required int id,
    required String? status,
  }) = _SprintModel;

  factory SprintModel.fromJson(Map<String, dynamic> json) =>
      _$SprintModelFromJson(json);
}
