// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingsModelImpl _$$TrainingsModelImplFromJson(Map<String, dynamic> json) =>
    _$TrainingsModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String?,
      questionCount: (json['question_count'] as num).toInt(),
      answerCount: (json['answer_count'] as num).toInt(),
      userSprintStatus: json['user_sprint_status'] as String?,
    );

Map<String, dynamic> _$$TrainingsModelImplToJson(
        _$TrainingsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'question_count': instance.questionCount,
      'answer_count': instance.answerCount,
      'user_sprint_status': instance.userSprintStatus,
    };
