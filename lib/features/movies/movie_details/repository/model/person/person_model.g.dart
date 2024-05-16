// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonModelImpl _$$PersonModelImplFromJson(Map<String, dynamic> json) =>
    _$PersonModelImpl(
      id: (json['id'] as num).toInt(),
      photo: json['photo'] as String?,
      name: json['name'] as String?,
      enName: json['enName'] as String?,
      description: json['description'] as String?,
      profession: json['profession'] as String?,
      enProfession: json['enProfession'] as String?,
    );

Map<String, dynamic> _$$PersonModelImplToJson(_$PersonModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'name': instance.name,
      'enName': instance.enName,
      'description': instance.description,
      'profession': instance.profession,
      'enProfession': instance.enProfession,
    };
