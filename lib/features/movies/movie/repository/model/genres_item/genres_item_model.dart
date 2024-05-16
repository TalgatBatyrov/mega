// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'genres_item_model.freezed.dart';
part 'genres_item_model.g.dart';

@freezed
abstract class GenresItemModel with _$GenresItemModel {
  const factory GenresItemModel({
    required String? name,
  }) = _GenresItemModel;

  factory GenresItemModel.fromJson(Map<String, dynamic> json) =>
      _$GenresItemModelFromJson(json);
}
