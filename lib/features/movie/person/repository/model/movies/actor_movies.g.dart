// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActorMoviesImpl _$$ActorMoviesImplFromJson(Map<String, dynamic> json) =>
    _$ActorMoviesImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      alternativeName: json['alternativeName'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      general: json['general'] as bool,
      description: json['description'] as String?,
      enProfession: json['enProfession'] as String?,
    );

Map<String, dynamic> _$$ActorMoviesImplToJson(_$ActorMoviesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'alternativeName': instance.alternativeName,
      'rating': instance.rating,
      'general': instance.general,
      'description': instance.description,
      'enProfession': instance.enProfession,
    };
