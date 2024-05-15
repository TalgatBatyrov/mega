// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training_passing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingPassingModelImpl _$$TrainingPassingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingPassingModelImpl(
      id: (json['id'] as num).toInt(),
      answers: (json['answers'] as List<dynamic>)
          .map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      type: json['type'] as String,
      description: json['description'] as String,
      image: json['image'] as String?,
      quiz: (json['quiz'] as num).toInt(),
    );

Map<String, dynamic> _$$TrainingPassingModelImplToJson(
        _$TrainingPassingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'answers': instance.answers,
      'name': instance.name,
      'type': instance.type,
      'description': instance.description,
      'image': instance.image,
      'quiz': instance.quiz,
    };
