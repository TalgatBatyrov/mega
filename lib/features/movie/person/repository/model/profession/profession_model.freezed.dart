// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profession_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfessionModel _$ProfessionModelFromJson(Map<String, dynamic> json) {
  return _ProfessionModel.fromJson(json);
}

/// @nodoc
mixin _$ProfessionModel {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfessionModelCopyWith<ProfessionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfessionModelCopyWith<$Res> {
  factory $ProfessionModelCopyWith(
          ProfessionModel value, $Res Function(ProfessionModel) then) =
      _$ProfessionModelCopyWithImpl<$Res, ProfessionModel>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ProfessionModelCopyWithImpl<$Res, $Val extends ProfessionModel>
    implements $ProfessionModelCopyWith<$Res> {
  _$ProfessionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfessionModelImplCopyWith<$Res>
    implements $ProfessionModelCopyWith<$Res> {
  factory _$$ProfessionModelImplCopyWith(_$ProfessionModelImpl value,
          $Res Function(_$ProfessionModelImpl) then) =
      __$$ProfessionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ProfessionModelImplCopyWithImpl<$Res>
    extends _$ProfessionModelCopyWithImpl<$Res, _$ProfessionModelImpl>
    implements _$$ProfessionModelImplCopyWith<$Res> {
  __$$ProfessionModelImplCopyWithImpl(
      _$ProfessionModelImpl _value, $Res Function(_$ProfessionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ProfessionModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfessionModelImpl implements _ProfessionModel {
  const _$ProfessionModelImpl({required this.value});

  factory _$ProfessionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfessionModelImplFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'ProfessionModel(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfessionModelImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfessionModelImplCopyWith<_$ProfessionModelImpl> get copyWith =>
      __$$ProfessionModelImplCopyWithImpl<_$ProfessionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfessionModelImplToJson(
      this,
    );
  }
}

abstract class _ProfessionModel implements ProfessionModel {
  const factory _ProfessionModel({required final String value}) =
      _$ProfessionModelImpl;

  factory _ProfessionModel.fromJson(Map<String, dynamic> json) =
      _$ProfessionModelImpl.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$ProfessionModelImplCopyWith<_$ProfessionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
