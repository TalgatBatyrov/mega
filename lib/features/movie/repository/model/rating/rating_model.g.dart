// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      kp: (json['kp'] as num).toDouble(),
      imdb: (json['imdb'] as num).toDouble(),
      filmCritics: (json['filmCritics'] as num).toInt(),
      russianFilmCritics: (json['russianFilmCritics'] as num).toInt(),
      wait: (json['await'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{
      'kp': instance.kp,
      'imdb': instance.imdb,
      'filmCritics': instance.filmCritics,
      'russianFilmCritics': instance.russianFilmCritics,
      'await': instance.wait,
    };
