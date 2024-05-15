// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release_year_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReleaseYearModel _$ReleaseYearModelFromJson(Map<String, dynamic> json) {
  return _ReleaseYearModel.fromJson(json);
}

/// @nodoc
mixin _$ReleaseYearModel {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseYearModelCopyWith<ReleaseYearModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseYearModelCopyWith<$Res> {
  factory $ReleaseYearModelCopyWith(
          ReleaseYearModel value, $Res Function(ReleaseYearModel) then) =
      _$ReleaseYearModelCopyWithImpl<$Res, ReleaseYearModel>;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$ReleaseYearModelCopyWithImpl<$Res, $Val extends ReleaseYearModel>
    implements $ReleaseYearModelCopyWith<$Res> {
  _$ReleaseYearModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReleaseYearModelImplCopyWith<$Res>
    implements $ReleaseYearModelCopyWith<$Res> {
  factory _$$ReleaseYearModelImplCopyWith(_$ReleaseYearModelImpl value,
          $Res Function(_$ReleaseYearModelImpl) then) =
      __$$ReleaseYearModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$$ReleaseYearModelImplCopyWithImpl<$Res>
    extends _$ReleaseYearModelCopyWithImpl<$Res, _$ReleaseYearModelImpl>
    implements _$$ReleaseYearModelImplCopyWith<$Res> {
  __$$ReleaseYearModelImplCopyWithImpl(_$ReleaseYearModelImpl _value,
      $Res Function(_$ReleaseYearModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$ReleaseYearModelImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseYearModelImpl implements _ReleaseYearModel {
  const _$ReleaseYearModelImpl({required this.start, required this.end});

  factory _$ReleaseYearModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseYearModelImplFromJson(json);

  @override
  final int start;
  @override
  final int end;

  @override
  String toString() {
    return 'ReleaseYearModel(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseYearModelImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseYearModelImplCopyWith<_$ReleaseYearModelImpl> get copyWith =>
      __$$ReleaseYearModelImplCopyWithImpl<_$ReleaseYearModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseYearModelImplToJson(
      this,
    );
  }
}

abstract class _ReleaseYearModel implements ReleaseYearModel {
  const factory _ReleaseYearModel(
      {required final int start,
      required final int end}) = _$ReleaseYearModelImpl;

  factory _ReleaseYearModel.fromJson(Map<String, dynamic> json) =
      _$ReleaseYearModelImpl.fromJson;

  @override
  int get start;
  @override
  int get end;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseYearModelImplCopyWith<_$ReleaseYearModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
