// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_passing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingPassingModel _$TrainingPassingModelFromJson(Map<String, dynamic> json) {
  return _TrainingPassingModel.fromJson(json);
}

/// @nodoc
mixin _$TrainingPassingModel {
  int get id => throw _privateConstructorUsedError;
  List<AnswerModel> get answers => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get quiz => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingPassingModelCopyWith<TrainingPassingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingPassingModelCopyWith<$Res> {
  factory $TrainingPassingModelCopyWith(TrainingPassingModel value,
          $Res Function(TrainingPassingModel) then) =
      _$TrainingPassingModelCopyWithImpl<$Res, TrainingPassingModel>;
  @useResult
  $Res call(
      {int id,
      List<AnswerModel> answers,
      String name,
      String type,
      String description,
      String? image,
      int quiz});
}

/// @nodoc
class _$TrainingPassingModelCopyWithImpl<$Res,
        $Val extends TrainingPassingModel>
    implements $TrainingPassingModelCopyWith<$Res> {
  _$TrainingPassingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answers = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? image = freezed,
    Object? quiz = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainingPassingModelImplCopyWith<$Res>
    implements $TrainingPassingModelCopyWith<$Res> {
  factory _$$TrainingPassingModelImplCopyWith(_$TrainingPassingModelImpl value,
          $Res Function(_$TrainingPassingModelImpl) then) =
      __$$TrainingPassingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<AnswerModel> answers,
      String name,
      String type,
      String description,
      String? image,
      int quiz});
}

/// @nodoc
class __$$TrainingPassingModelImplCopyWithImpl<$Res>
    extends _$TrainingPassingModelCopyWithImpl<$Res, _$TrainingPassingModelImpl>
    implements _$$TrainingPassingModelImplCopyWith<$Res> {
  __$$TrainingPassingModelImplCopyWithImpl(_$TrainingPassingModelImpl _value,
      $Res Function(_$TrainingPassingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answers = null,
    Object? name = null,
    Object? type = null,
    Object? description = null,
    Object? image = freezed,
    Object? quiz = null,
  }) {
    return _then(_$TrainingPassingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<AnswerModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      quiz: null == quiz
          ? _value.quiz
          : quiz // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingPassingModelImpl implements _TrainingPassingModel {
  const _$TrainingPassingModelImpl(
      {required this.id,
      required final List<AnswerModel> answers,
      required this.name,
      required this.type,
      required this.description,
      required this.image,
      required this.quiz})
      : _answers = answers;

  factory _$TrainingPassingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingPassingModelImplFromJson(json);

  @override
  final int id;
  final List<AnswerModel> _answers;
  @override
  List<AnswerModel> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String name;
  @override
  final String type;
  @override
  final String description;
  @override
  final String? image;
  @override
  final int quiz;

  @override
  String toString() {
    return 'TrainingPassingModel(id: $id, answers: $answers, name: $name, type: $type, description: $description, image: $image, quiz: $quiz)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingPassingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.quiz, quiz) || other.quiz == quiz));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_answers),
      name,
      type,
      description,
      image,
      quiz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingPassingModelImplCopyWith<_$TrainingPassingModelImpl>
      get copyWith =>
          __$$TrainingPassingModelImplCopyWithImpl<_$TrainingPassingModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingPassingModelImplToJson(
      this,
    );
  }
}

abstract class _TrainingPassingModel implements TrainingPassingModel {
  const factory _TrainingPassingModel(
      {required final int id,
      required final List<AnswerModel> answers,
      required final String name,
      required final String type,
      required final String description,
      required final String? image,
      required final int quiz}) = _$TrainingPassingModelImpl;

  factory _TrainingPassingModel.fromJson(Map<String, dynamic> json) =
      _$TrainingPassingModelImpl.fromJson;

  @override
  int get id;
  @override
  List<AnswerModel> get answers;
  @override
  String get name;
  @override
  String get type;
  @override
  String get description;
  @override
  String? get image;
  @override
  int get quiz;
  @override
  @JsonKey(ignore: true)
  _$$TrainingPassingModelImplCopyWith<_$TrainingPassingModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
