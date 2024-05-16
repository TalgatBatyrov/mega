// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/movies/person/repository/model/movies/actor_movies.dart';
import 'package:mega/features/movies/person/repository/model/profession/profession_model.dart';

part 'person_model.freezed.dart';
part 'person_model.g.dart';

@freezed
abstract class PersonModel with _$PersonModel {
  const factory PersonModel({
    required bool? isParse,
    required int id,
    required String? name,
    required String? enName,
    required String? photo,
    required List<ProfessionModel> profession,
    required List<ProfessionModel>? birthPlace,
    required List<ActorMovies> movies,
    required int? age,
    required String? sex,
    required DateTime? birthday,
    required List<ProfessionModel> facts,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
