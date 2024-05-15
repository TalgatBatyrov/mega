// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingModel _$RatingModelFromJson(Map<String, dynamic> json) {
  return _RatingModel.fromJson(json);
}

/// @nodoc
mixin _$RatingModel {
  double get kp => throw _privateConstructorUsedError;
  double get imdb => throw _privateConstructorUsedError;
  int get filmCritics => throw _privateConstructorUsedError;
  int get russianFilmCritics => throw _privateConstructorUsedError;
  @JsonKey(name: 'await')
  int? get wait => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingModelCopyWith<RatingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingModelCopyWith<$Res> {
  factory $RatingModelCopyWith(
          RatingModel value, $Res Function(RatingModel) then) =
      _$RatingModelCopyWithImpl<$Res, RatingModel>;
  @useResult
  $Res call(
      {double kp,
      double imdb,
      int filmCritics,
      int russianFilmCritics,
      @JsonKey(name: 'await') int? wait});
}

/// @nodoc
class _$RatingModelCopyWithImpl<$Res, $Val extends RatingModel>
    implements $RatingModelCopyWith<$Res> {
  _$RatingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = null,
    Object? imdb = null,
    Object? filmCritics = null,
    Object? russianFilmCritics = null,
    Object? wait = freezed,
  }) {
    return _then(_value.copyWith(
      kp: null == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      filmCritics: null == filmCritics
          ? _value.filmCritics
          : filmCritics // ignore: cast_nullable_to_non_nullable
              as int,
      russianFilmCritics: null == russianFilmCritics
          ? _value.russianFilmCritics
          : russianFilmCritics // ignore: cast_nullable_to_non_nullable
              as int,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingModelImplCopyWith<$Res>
    implements $RatingModelCopyWith<$Res> {
  factory _$$RatingModelImplCopyWith(
          _$RatingModelImpl value, $Res Function(_$RatingModelImpl) then) =
      __$$RatingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double kp,
      double imdb,
      int filmCritics,
      int russianFilmCritics,
      @JsonKey(name: 'await') int? wait});
}

/// @nodoc
class __$$RatingModelImplCopyWithImpl<$Res>
    extends _$RatingModelCopyWithImpl<$Res, _$RatingModelImpl>
    implements _$$RatingModelImplCopyWith<$Res> {
  __$$RatingModelImplCopyWithImpl(
      _$RatingModelImpl _value, $Res Function(_$RatingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kp = null,
    Object? imdb = null,
    Object? filmCritics = null,
    Object? russianFilmCritics = null,
    Object? wait = freezed,
  }) {
    return _then(_$RatingModelImpl(
      kp: null == kp
          ? _value.kp
          : kp // ignore: cast_nullable_to_non_nullable
              as double,
      imdb: null == imdb
          ? _value.imdb
          : imdb // ignore: cast_nullable_to_non_nullable
              as double,
      filmCritics: null == filmCritics
          ? _value.filmCritics
          : filmCritics // ignore: cast_nullable_to_non_nullable
              as int,
      russianFilmCritics: null == russianFilmCritics
          ? _value.russianFilmCritics
          : russianFilmCritics // ignore: cast_nullable_to_non_nullable
              as int,
      wait: freezed == wait
          ? _value.wait
          : wait // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingModelImpl implements _RatingModel {
  const _$RatingModelImpl(
      {required this.kp,
      required this.imdb,
      required this.filmCritics,
      required this.russianFilmCritics,
      @JsonKey(name: 'await') required this.wait});

  factory _$RatingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingModelImplFromJson(json);

  @override
  final double kp;
  @override
  final double imdb;
  @override
  final int filmCritics;
  @override
  final int russianFilmCritics;
  @override
  @JsonKey(name: 'await')
  final int? wait;

  @override
  String toString() {
    return 'RatingModel(kp: $kp, imdb: $imdb, filmCritics: $filmCritics, russianFilmCritics: $russianFilmCritics, wait: $wait)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingModelImpl &&
            (identical(other.kp, kp) || other.kp == kp) &&
            (identical(other.imdb, imdb) || other.imdb == imdb) &&
            (identical(other.filmCritics, filmCritics) ||
                other.filmCritics == filmCritics) &&
            (identical(other.russianFilmCritics, russianFilmCritics) ||
                other.russianFilmCritics == russianFilmCritics) &&
            (identical(other.wait, wait) || other.wait == wait));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kp, imdb, filmCritics, russianFilmCritics, wait);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      __$$RatingModelImplCopyWithImpl<_$RatingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingModelImplToJson(
      this,
    );
  }
}

abstract class _RatingModel implements RatingModel {
  const factory _RatingModel(
      {required final double kp,
      required final double imdb,
      required final int filmCritics,
      required final int russianFilmCritics,
      @JsonKey(name: 'await') required final int? wait}) = _$RatingModelImpl;

  factory _RatingModel.fromJson(Map<String, dynamic> json) =
      _$RatingModelImpl.fromJson;

  @override
  double get kp;
  @override
  double get imdb;
  @override
  int get filmCritics;
  @override
  int get russianFilmCritics;
  @override
  @JsonKey(name: 'await')
  int? get wait;
  @override
  @JsonKey(ignore: true)
  _$$RatingModelImplCopyWith<_$RatingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
