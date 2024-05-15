// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingDetailsModel _$TrainingDetailsModelFromJson(Map<String, dynamic> json) {
  return _TrainingDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$TrainingDetailsModel {
  int get id => throw _privateConstructorUsedError;
  SprintModel? get sprint => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'passing_percentage')
  int get passingPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'newbie_required')
  bool get newbieRequired => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingDetailsModelCopyWith<TrainingDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingDetailsModelCopyWith<$Res> {
  factory $TrainingDetailsModelCopyWith(TrainingDetailsModel value,
          $Res Function(TrainingDetailsModel) then) =
      _$TrainingDetailsModelCopyWithImpl<$Res, TrainingDetailsModel>;
  @useResult
  $Res call(
      {int id,
      SprintModel? sprint,
      String name,
      String content,
      String? image,
      @JsonKey(name: 'passing_percentage') int passingPercentage,
      @JsonKey(name: 'newbie_required') bool newbieRequired,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  $SprintModelCopyWith<$Res>? get sprint;
}

/// @nodoc
class _$TrainingDetailsModelCopyWithImpl<$Res,
        $Val extends TrainingDetailsModel>
    implements $TrainingDetailsModelCopyWith<$Res> {
  _$TrainingDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sprint = freezed,
    Object? name = null,
    Object? content = null,
    Object? image = freezed,
    Object? passingPercentage = null,
    Object? newbieRequired = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as SprintModel?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      passingPercentage: null == passingPercentage
          ? _value.passingPercentage
          : passingPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      newbieRequired: null == newbieRequired
          ? _value.newbieRequired
          : newbieRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SprintModelCopyWith<$Res>? get sprint {
    if (_value.sprint == null) {
      return null;
    }

    return $SprintModelCopyWith<$Res>(_value.sprint!, (value) {
      return _then(_value.copyWith(sprint: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrainingDetailsModelImplCopyWith<$Res>
    implements $TrainingDetailsModelCopyWith<$Res> {
  factory _$$TrainingDetailsModelImplCopyWith(_$TrainingDetailsModelImpl value,
          $Res Function(_$TrainingDetailsModelImpl) then) =
      __$$TrainingDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      SprintModel? sprint,
      String name,
      String content,
      String? image,
      @JsonKey(name: 'passing_percentage') int passingPercentage,
      @JsonKey(name: 'newbie_required') bool newbieRequired,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});

  @override
  $SprintModelCopyWith<$Res>? get sprint;
}

/// @nodoc
class __$$TrainingDetailsModelImplCopyWithImpl<$Res>
    extends _$TrainingDetailsModelCopyWithImpl<$Res, _$TrainingDetailsModelImpl>
    implements _$$TrainingDetailsModelImplCopyWith<$Res> {
  __$$TrainingDetailsModelImplCopyWithImpl(_$TrainingDetailsModelImpl _value,
      $Res Function(_$TrainingDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sprint = freezed,
    Object? name = null,
    Object? content = null,
    Object? image = freezed,
    Object? passingPercentage = null,
    Object? newbieRequired = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TrainingDetailsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sprint: freezed == sprint
          ? _value.sprint
          : sprint // ignore: cast_nullable_to_non_nullable
              as SprintModel?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      passingPercentage: null == passingPercentage
          ? _value.passingPercentage
          : passingPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      newbieRequired: null == newbieRequired
          ? _value.newbieRequired
          : newbieRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingDetailsModelImpl implements _TrainingDetailsModel {
  const _$TrainingDetailsModelImpl(
      {required this.id,
      required this.sprint,
      required this.name,
      required this.content,
      required this.image,
      @JsonKey(name: 'passing_percentage') required this.passingPercentage,
      @JsonKey(name: 'newbie_required') required this.newbieRequired,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$TrainingDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final SprintModel? sprint;
  @override
  final String name;
  @override
  final String content;
  @override
  final String? image;
  @override
  @JsonKey(name: 'passing_percentage')
  final int passingPercentage;
  @override
  @JsonKey(name: 'newbie_required')
  final bool newbieRequired;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TrainingDetailsModel(id: $id, sprint: $sprint, name: $name, content: $content, image: $image, passingPercentage: $passingPercentage, newbieRequired: $newbieRequired, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sprint, sprint) || other.sprint == sprint) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.passingPercentage, passingPercentage) ||
                other.passingPercentage == passingPercentage) &&
            (identical(other.newbieRequired, newbieRequired) ||
                other.newbieRequired == newbieRequired) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sprint, name, content, image,
      passingPercentage, newbieRequired, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingDetailsModelImplCopyWith<_$TrainingDetailsModelImpl>
      get copyWith =>
          __$$TrainingDetailsModelImplCopyWithImpl<_$TrainingDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _TrainingDetailsModel implements TrainingDetailsModel {
  const factory _TrainingDetailsModel(
      {required final int id,
      required final SprintModel? sprint,
      required final String name,
      required final String content,
      required final String? image,
      @JsonKey(name: 'passing_percentage') required final int passingPercentage,
      @JsonKey(name: 'newbie_required') required final bool newbieRequired,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt}) = _$TrainingDetailsModelImpl;

  factory _TrainingDetailsModel.fromJson(Map<String, dynamic> json) =
      _$TrainingDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  SprintModel? get sprint;
  @override
  String get name;
  @override
  String get content;
  @override
  String? get image;
  @override
  @JsonKey(name: 'passing_percentage')
  int get passingPercentage;
  @override
  @JsonKey(name: 'newbie_required')
  bool get newbieRequired;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TrainingDetailsModelImplCopyWith<_$TrainingDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
