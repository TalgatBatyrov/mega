// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_movies.freezed.dart';
part 'actor_movies.g.dart';

@freezed
abstract class ActorMovies with _$ActorMovies {
  const factory ActorMovies({
    required int id,
    required String? name,
    required String? alternativeName,
    required double? rating,
    required bool general,
    required String? description,
    required String? enProfession,
  }) = _ActorMovies;

  factory ActorMovies.fromJson(Map<String, dynamic> json) =>
      _$ActorMoviesFromJson(json);
}
