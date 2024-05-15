// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profession_model.freezed.dart';
part 'profession_model.g.dart';

@freezed
abstract class ProfessionModel with _$ProfessionModel {
  const factory ProfessionModel({required String value}) = _ProfessionModel;

  factory ProfessionModel.fromJson(Map<String, dynamic> json) =>
      _$ProfessionModelFromJson(json);
}
