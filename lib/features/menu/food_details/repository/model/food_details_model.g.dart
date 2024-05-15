// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodDetailsModelImpl _$$FoodDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FoodDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      category: json['category'] as String,
      name: json['name'] as String,
      image: json['image'] as String?,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$FoodDetailsModelImplToJson(
        _$FoodDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'image': instance.image,
      'content': instance.content,
    };
