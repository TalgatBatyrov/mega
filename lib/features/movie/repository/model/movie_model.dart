// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/movie/repository/model/genres_item/genres_item_model.dart';
import 'package:mega/features/movie/repository/model/poster/poster_model.dart';
import 'package:mega/features/movie/repository/model/rating/rating_model.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    required int id,
    required String? name,
    required String? alternativeName,
    required String? enName,
    required String? type,
    required int? typeNumber,
    required int? year,
    required String? description,
    required String? shortDescription,
    required String? status,
    required RatingModel rating,
    required RatingModel votes,
    required int? movieLength,
    required int? totalSeriesLength,
    required int? seriesLength,
    required String? ratingMpaa,
    required int? ageRating,
    required PosterModel? poster,
    required PosterModel? backdrop,
    required List<GenresItemModel>? genres,
    required List<GenresItemModel>? countries,
    required int? tip10,
    required int? tip250,
    required bool? isSeries,
    required bool? ticketsOnSale,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
