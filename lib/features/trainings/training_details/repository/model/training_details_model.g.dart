// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingDetailsModelImpl _$$TrainingDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      sprint: json['sprint'] == null
          ? null
          : SprintModel.fromJson(json['sprint'] as Map<String, dynamic>),
      name: json['name'] as String,
      content: json['content'] as String,
      image: json['image'] as String?,
      passingPercentage: (json['passing_percentage'] as num).toInt(),
      newbieRequired: json['newbie_required'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TrainingDetailsModelImplToJson(
        _$TrainingDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sprint': instance.sprint,
      'name': instance.name,
      'content': instance.content,
      'image': instance.image,
      'passing_percentage': instance.passingPercentage,
      'newbie_required': instance.newbieRequired,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
