// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingsModel _$TrainingsModelFromJson(Map<String, dynamic> json) {
  return _TrainingsModel.fromJson(json);
}

/// @nodoc
mixin _$TrainingsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_count')
  int get questionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_count')
  int get answerCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_sprint_status')
  String? get userSprintStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingsModelCopyWith<TrainingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingsModelCopyWith<$Res> {
  factory $TrainingsModelCopyWith(
          TrainingsModel value, $Res Function(TrainingsModel) then) =
      _$TrainingsModelCopyWithImpl<$Res, TrainingsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(name: 'question_count') int questionCount,
      @JsonKey(name: 'answer_count') int answerCount,
      @JsonKey(name: 'user_sprint_status') String? userSprintStatus});
}

/// @nodoc
class _$TrainingsModelCopyWithImpl<$Res, $Val extends TrainingsModel>
    implements $TrainingsModelCopyWith<$Res> {
  _$TrainingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? questionCount = null,
    Object? answerCount = null,
    Object? userSprintStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      questionCount: null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      userSprintStatus: freezed == userSprintStatus
          ? _value.userSprintStatus
          : userSprintStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingsModelImplCopyWith<$Res>
    implements $TrainingsModelCopyWith<$Res> {
  factory _$$TrainingsModelImplCopyWith(_$TrainingsModelImpl value,
          $Res Function(_$TrainingsModelImpl) then) =
      __$$TrainingsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? image,
      @JsonKey(name: 'question_count') int questionCount,
      @JsonKey(name: 'answer_count') int answerCount,
      @JsonKey(name: 'user_sprint_status') String? userSprintStatus});
}

/// @nodoc
class __$$TrainingsModelImplCopyWithImpl<$Res>
    extends _$TrainingsModelCopyWithImpl<$Res, _$TrainingsModelImpl>
    implements _$$TrainingsModelImplCopyWith<$Res> {
  __$$TrainingsModelImplCopyWithImpl(
      _$TrainingsModelImpl _value, $Res Function(_$TrainingsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
    Object? questionCount = null,
    Object? answerCount = null,
    Object? userSprintStatus = freezed,
  }) {
    return _then(_$TrainingsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      questionCount: null == questionCount
          ? _value.questionCount
          : questionCount // ignore: cast_nullable_to_non_nullable
              as int,
      answerCount: null == answerCount
          ? _value.answerCount
          : answerCount // ignore: cast_nullable_to_non_nullable
              as int,
      userSprintStatus: freezed == userSprintStatus
          ? _value.userSprintStatus
          : userSprintStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingsModelImpl implements _TrainingsModel {
  const _$TrainingsModelImpl(
      {required this.id,
      required this.name,
      required this.image,
      @JsonKey(name: 'question_count') required this.questionCount,
      @JsonKey(name: 'answer_count') required this.answerCount,
      @JsonKey(name: 'user_sprint_status') required this.userSprintStatus});

  factory _$TrainingsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;
  @override
  @JsonKey(name: 'question_count')
  final int questionCount;
  @override
  @JsonKey(name: 'answer_count')
  final int answerCount;
  @override
  @JsonKey(name: 'user_sprint_status')
  final String? userSprintStatus;

  @override
  String toString() {
    return 'TrainingsModel(id: $id, name: $name, image: $image, questionCount: $questionCount, answerCount: $answerCount, userSprintStatus: $userSprintStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.questionCount, questionCount) ||
                other.questionCount == questionCount) &&
            (identical(other.answerCount, answerCount) ||
                other.answerCount == answerCount) &&
            (identical(other.userSprintStatus, userSprintStatus) ||
                other.userSprintStatus == userSprintStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, questionCount,
      answerCount, userSprintStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingsModelImplCopyWith<_$TrainingsModelImpl> get copyWith =>
      __$$TrainingsModelImplCopyWithImpl<_$TrainingsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingsModelImplToJson(
      this,
    );
  }
}

abstract class _TrainingsModel implements TrainingsModel {
  const factory _TrainingsModel(
      {required final int id,
      required final String name,
      required final String? image,
      @JsonKey(name: 'question_count') required final int questionCount,
      @JsonKey(name: 'answer_count') required final int answerCount,
      @JsonKey(name: 'user_sprint_status')
      required final String? userSprintStatus}) = _$TrainingsModelImpl;

  factory _TrainingsModel.fromJson(Map<String, dynamic> json) =
      _$TrainingsModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;
  @override
  @JsonKey(name: 'question_count')
  int get questionCount;
  @override
  @JsonKey(name: 'answer_count')
  int get answerCount;
  @override
  @JsonKey(name: 'user_sprint_status')
  String? get userSprintStatus;
  @override
  @JsonKey(ignore: true)
  _$$TrainingsModelImplCopyWith<_$TrainingsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
