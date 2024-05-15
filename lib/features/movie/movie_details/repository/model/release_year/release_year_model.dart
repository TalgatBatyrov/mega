// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'release_year_model.freezed.dart';
part 'release_year_model.g.dart';

@freezed
abstract class ReleaseYearModel with _$ReleaseYearModel {
  const factory ReleaseYearModel({
    required int start,
    required int end,
  }) = _ReleaseYearModel;

  factory ReleaseYearModel.fromJson(Map<String, dynamic> json) =>
      _$ReleaseYearModelFromJson(json);
}
