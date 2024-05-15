// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'premiere_model.freezed.dart';
part 'premiere_model.g.dart';

@freezed
abstract class PremiereModel with _$PremiereModel {
  const factory PremiereModel({
    required String? country,
    required String? russia,
    required String? digital,
    required String? cinema,
    required String? bluray,
    required String? dvd,
  }) = _PremiereModel;

  factory PremiereModel.fromJson(Map<String, dynamic> json) =>
      _$PremiereModelFromJson(json);
}
