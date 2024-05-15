// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FoodDetailsModel _$FoodDetailsModelFromJson(Map<String, dynamic> json) {
  return _FoodDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$FoodDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodDetailsModelCopyWith<FoodDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailsModelCopyWith<$Res> {
  factory $FoodDetailsModelCopyWith(
          FoodDetailsModel value, $Res Function(FoodDetailsModel) then) =
      _$FoodDetailsModelCopyWithImpl<$Res, FoodDetailsModel>;
  @useResult
  $Res call(
      {int id, String category, String name, String? image, String content});
}

/// @nodoc
class _$FoodDetailsModelCopyWithImpl<$Res, $Val extends FoodDetailsModel>
    implements $FoodDetailsModelCopyWith<$Res> {
  _$FoodDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? image = freezed,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodDetailsModelImplCopyWith<$Res>
    implements $FoodDetailsModelCopyWith<$Res> {
  factory _$$FoodDetailsModelImplCopyWith(_$FoodDetailsModelImpl value,
          $Res Function(_$FoodDetailsModelImpl) then) =
      __$$FoodDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String category, String name, String? image, String content});
}

/// @nodoc
class __$$FoodDetailsModelImplCopyWithImpl<$Res>
    extends _$FoodDetailsModelCopyWithImpl<$Res, _$FoodDetailsModelImpl>
    implements _$$FoodDetailsModelImplCopyWith<$Res> {
  __$$FoodDetailsModelImplCopyWithImpl(_$FoodDetailsModelImpl _value,
      $Res Function(_$FoodDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? name = null,
    Object? image = freezed,
    Object? content = null,
  }) {
    return _then(_$FoodDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodDetailsModelImpl implements _FoodDetailsModel {
  const _$FoodDetailsModelImpl(
      {required this.id,
      required this.category,
      required this.name,
      required this.image,
      required this.content});

  factory _$FoodDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String category;
  @override
  final String name;
  @override
  final String? image;
  @override
  final String content;

  @override
  String toString() {
    return 'FoodDetailsModel(id: $id, category: $category, name: $name, image: $image, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, category, name, image, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodDetailsModelImplCopyWith<_$FoodDetailsModelImpl> get copyWith =>
      __$$FoodDetailsModelImplCopyWithImpl<_$FoodDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _FoodDetailsModel implements FoodDetailsModel {
  const factory _FoodDetailsModel(
      {required final int id,
      required final String category,
      required final String name,
      required final String? image,
      required final String content}) = _$FoodDetailsModelImpl;

  factory _FoodDetailsModel.fromJson(Map<String, dynamic> json) =
      _$FoodDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get category;
  @override
  String get name;
  @override
  String? get image;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$FoodDetailsModelImplCopyWith<_$FoodDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
