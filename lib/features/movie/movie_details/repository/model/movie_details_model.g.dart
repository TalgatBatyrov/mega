// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDetailsModelImpl _$$HomeDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      alternativeName: json['alternativeName'] as String?,
      type: json['type'] as String?,
      typeNumber: (json['typeNumber'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      slogan: json['slogan'] as String?,
      status: json['status'] as String?,
      rating: json['rating'] == null
          ? null
          : RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      votes: json['votes'] == null
          ? null
          : RatingModel.fromJson(json['votes'] as Map<String, dynamic>),
      movieLength: (json['movieLength'] as num?)?.toInt(),
      totalSeriesLength: (json['totalSeriesLength'] as num?)?.toInt(),
      seriesLength: (json['seriesLength'] as num?)?.toInt(),
      ratingMpaa: json['ratingMpaa'] as String?,
      ageRating: (json['ageRating'] as num?)?.toInt(),
      poster: json['poster'] == null
          ? null
          : PosterModel.fromJson(json['poster'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenresItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => GenresItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      persons: (json['persons'] as List<dynamic>?)
          ?.map((e) => PersonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      premiere: json['premiere'] == null
          ? null
          : PremiereModel.fromJson(json['premiere'] as Map<String, dynamic>),
      releaseYears: (json['releaseYears'] as List<dynamic>?)
          ?.map((e) => ReleaseYearModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeDetailsModelImplToJson(
        _$HomeDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'type': instance.type,
      'typeNumber': instance.typeNumber,
      'year': instance.year,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'slogan': instance.slogan,
      'status': instance.status,
      'rating': instance.rating,
      'votes': instance.votes,
      'movieLength': instance.movieLength,
      'totalSeriesLength': instance.totalSeriesLength,
      'seriesLength': instance.seriesLength,
      'ratingMpaa': instance.ratingMpaa,
      'ageRating': instance.ageRating,
      'poster': instance.poster,
      'genres': instance.genres,
      'countries': instance.countries,
      'persons': instance.persons,
      'premiere': instance.premiere,
      'releaseYears': instance.releaseYears,
    };
