// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      alternativeName: json['alternativeName'] as String?,
      enName: json['enName'] as String?,
      type: json['type'] as String?,
      typeNumber: (json['typeNumber'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      description: json['description'] as String?,
      shortDescription: json['shortDescription'] as String?,
      status: json['status'] as String?,
      rating: RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      votes: RatingModel.fromJson(json['votes'] as Map<String, dynamic>),
      movieLength: (json['movieLength'] as num?)?.toInt(),
      totalSeriesLength: (json['totalSeriesLength'] as num?)?.toInt(),
      seriesLength: (json['seriesLength'] as num?)?.toInt(),
      ratingMpaa: json['ratingMpaa'] as String?,
      ageRating: (json['ageRating'] as num?)?.toInt(),
      poster: json['poster'] == null
          ? null
          : PosterModel.fromJson(json['poster'] as Map<String, dynamic>),
      backdrop: json['backdrop'] == null
          ? null
          : PosterModel.fromJson(json['backdrop'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenresItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => GenresItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      tip10: (json['tip10'] as num?)?.toInt(),
      tip250: (json['tip250'] as num?)?.toInt(),
      isSeries: json['isSeries'] as bool?,
      ticketsOnSale: json['ticketsOnSale'] as bool?,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'enName': instance.enName,
      'type': instance.type,
      'typeNumber': instance.typeNumber,
      'year': instance.year,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'status': instance.status,
      'rating': instance.rating,
      'votes': instance.votes,
      'movieLength': instance.movieLength,
      'totalSeriesLength': instance.totalSeriesLength,
      'seriesLength': instance.seriesLength,
      'ratingMpaa': instance.ratingMpaa,
      'ageRating': instance.ageRating,
      'poster': instance.poster,
      'backdrop': instance.backdrop,
      'genres': instance.genres,
      'countries': instance.countries,
      'tip10': instance.tip10,
      'tip250': instance.tip250,
      'isSeries': instance.isSeries,
      'ticketsOnSale': instance.ticketsOnSale,
    };
