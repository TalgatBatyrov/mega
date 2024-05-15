// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sprint_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SprintModel _$SprintModelFromJson(Map<String, dynamic> json) {
  return _SprintModel.fromJson(json);
}

/// @nodoc
mixin _$SprintModel {
  int get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SprintModelCopyWith<SprintModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SprintModelCopyWith<$Res> {
  factory $SprintModelCopyWith(
          SprintModel value, $Res Function(SprintModel) then) =
      _$SprintModelCopyWithImpl<$Res, SprintModel>;
  @useResult
  $Res call({int id, String? status});
}

/// @nodoc
class _$SprintModelCopyWithImpl<$Res, $Val extends SprintModel>
    implements $SprintModelCopyWith<$Res> {
  _$SprintModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SprintModelImplCopyWith<$Res>
    implements $SprintModelCopyWith<$Res> {
  factory _$$SprintModelImplCopyWith(
          _$SprintModelImpl value, $Res Function(_$SprintModelImpl) then) =
      __$$SprintModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? status});
}

/// @nodoc
class __$$SprintModelImplCopyWithImpl<$Res>
    extends _$SprintModelCopyWithImpl<$Res, _$SprintModelImpl>
    implements _$$SprintModelImplCopyWith<$Res> {
  __$$SprintModelImplCopyWithImpl(
      _$SprintModelImpl _value, $Res Function(_$SprintModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = freezed,
  }) {
    return _then(_$SprintModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SprintModelImpl implements _SprintModel {
  const _$SprintModelImpl({required this.id, required this.status});

  factory _$SprintModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SprintModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? status;

  @override
  String toString() {
    return 'SprintModel(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SprintModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SprintModelImplCopyWith<_$SprintModelImpl> get copyWith =>
      __$$SprintModelImplCopyWithImpl<_$SprintModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SprintModelImplToJson(
      this,
    );
  }
}

abstract class _SprintModel implements SprintModel {
  const factory _SprintModel(
      {required final int id,
      required final String? status}) = _$SprintModelImpl;

  factory _SprintModel.fromJson(Map<String, dynamic> json) =
      _$SprintModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$SprintModelImplCopyWith<_$SprintModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
