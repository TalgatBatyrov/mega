// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonModelImpl _$$PersonModelImplFromJson(Map<String, dynamic> json) =>
    _$PersonModelImpl(
      isParse: json['isParse'] as bool?,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      photo: json['photo'] as String?,
      profession: (json['profession'] as List<dynamic>)
          .map((e) => ProfessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      birthPlace: (json['birthPlace'] as List<dynamic>?)
          ?.map((e) => ProfessionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      movies: (json['movies'] as List<dynamic>)
          .map((e) => ActorMovies.fromJson(e as Map<String, dynamic>))
          .toList(),
      age: (json['age'] as num?)?.toInt(),
      sex: json['sex'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$PersonModelImplToJson(_$PersonModelImpl instance) =>
    <String, dynamic>{
      'isParse': instance.isParse,
      'id': instance.id,
      'name': instance.name,
      'enName': instance.enName,
      'photo': instance.photo,
      'profession': instance.profession,
      'birthPlace': instance.birthPlace,
      'movies': instance.movies,
      'age': instance.age,
      'sex': instance.sex,
      'birthday': instance.birthday?.toIso8601String(),
    };
