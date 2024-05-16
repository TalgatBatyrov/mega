// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/movies/movie/repository/model/genres_item/genres_item_model.dart';
import 'package:mega/features/movies/movie/repository/model/poster/poster_model.dart';
import 'package:mega/features/movies/movie/repository/model/rating/rating_model.dart';
import 'package:mega/features/movies/movie_details/repository/model/person/person_model.dart';
import 'package:mega/features/movies/movie_details/repository/model/premiere/premiere_model.dart';
import 'package:mega/features/movies/movie_details/repository/model/release_year/release_year_model.dart';

part 'movie_details_model.freezed.dart';
part 'movie_details_model.g.dart';

@freezed
abstract class MovieDetailsModel with _$MovieDetailsModel {
  const factory MovieDetailsModel({
    required int id,
    required String? name,
    required String? alternativeName,
    required String? type,
    required int? typeNumber,
    required int? year,
    required String? description,
    required String? shortDescription,
    required String? slogan,
    required String? status,
    required RatingModel? rating,
    required RatingModel? votes,
    required int? movieLength,
    required int? totalSeriesLength,
    required int? seriesLength,
    required String? ratingMpaa,
    required int? ageRating,
    required PosterModel? poster,
    required List<GenresItemModel>? genres,
    required List<GenresItemModel>? countries,
    required List<PersonModel>? persons,
    required PremiereModel? premiere,
    required List<ReleaseYearModel>? releaseYears,
  }) = _HomeDetailsModel;

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDetailsModelFromJson(json);
}
