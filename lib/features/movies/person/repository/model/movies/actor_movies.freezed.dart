// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'actor_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActorMovies _$ActorMoviesFromJson(Map<String, dynamic> json) {
  return _ActorMovies.fromJson(json);
}

/// @nodoc
mixin _$ActorMovies {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get alternativeName => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  bool get general => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get enProfession => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorMoviesCopyWith<ActorMovies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorMoviesCopyWith<$Res> {
  factory $ActorMoviesCopyWith(
          ActorMovies value, $Res Function(ActorMovies) then) =
      _$ActorMoviesCopyWithImpl<$Res, ActorMovies>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      double? rating,
      bool general,
      String? description,
      String? enProfession});
}

/// @nodoc
class _$ActorMoviesCopyWithImpl<$Res, $Val extends ActorMovies>
    implements $ActorMoviesCopyWith<$Res> {
  _$ActorMoviesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? alternativeName = freezed,
    Object? rating = freezed,
    Object? general = null,
    Object? description = freezed,
    Object? enProfession = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeName: freezed == alternativeName
          ? _value.alternativeName
          : alternativeName // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      general: null == general
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enProfession: freezed == enProfession
          ? _value.enProfession
          : enProfession // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorMoviesImplCopyWith<$Res>
    implements $ActorMoviesCopyWith<$Res> {
  factory _$$ActorMoviesImplCopyWith(
          _$ActorMoviesImpl value, $Res Function(_$ActorMoviesImpl) then) =
      __$$ActorMoviesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      double? rating,
      bool general,
      String? description,
      String? enProfession});
}

/// @nodoc
class __$$ActorMoviesImplCopyWithImpl<$Res>
    extends _$ActorMoviesCopyWithImpl<$Res, _$ActorMoviesImpl>
    implements _$$ActorMoviesImplCopyWith<$Res> {
  __$$ActorMoviesImplCopyWithImpl(
      _$ActorMoviesImpl _value, $Res Function(_$ActorMoviesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? alternativeName = freezed,
    Object? rating = freezed,
    Object? general = null,
    Object? description = freezed,
    Object? enProfession = freezed,
  }) {
    return _then(_$ActorMoviesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alternativeName: freezed == alternativeName
          ? _value.alternativeName
          : alternativeName // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      general: null == general
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      enProfession: freezed == enProfession
          ? _value.enProfession
          : enProfession // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorMoviesImpl implements _ActorMovies {
  const _$ActorMoviesImpl(
      {required this.id,
      required this.name,
      required this.alternativeName,
      required this.rating,
      required this.general,
      required this.description,
      required this.enProfession});

  factory _$ActorMoviesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorMoviesImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? alternativeName;
  @override
  final double? rating;
  @override
  final bool general;
  @override
  final String? description;
  @override
  final String? enProfession;

  @override
  String toString() {
    return 'ActorMovies(id: $id, name: $name, alternativeName: $alternativeName, rating: $rating, general: $general, description: $description, enProfession: $enProfession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActorMoviesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alternativeName, alternativeName) ||
                other.alternativeName == alternativeName) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.general, general) || other.general == general) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.enProfession, enProfession) ||
                other.enProfession == enProfession));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, alternativeName,
      rating, general, description, enProfession);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorMoviesImplCopyWith<_$ActorMoviesImpl> get copyWith =>
      __$$ActorMoviesImplCopyWithImpl<_$ActorMoviesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorMoviesImplToJson(
      this,
    );
  }
}

abstract class _ActorMovies implements ActorMovies {
  const factory _ActorMovies(
      {required final int id,
      required final String? name,
      required final String? alternativeName,
      required final double? rating,
      required final bool general,
      required final String? description,
      required final String? enProfession}) = _$ActorMoviesImpl;

  factory _ActorMovies.fromJson(Map<String, dynamic> json) =
      _$ActorMoviesImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get alternativeName;
  @override
  double? get rating;
  @override
  bool get general;
  @override
  String? get description;
  @override
  String? get enProfession;
  @override
  @JsonKey(ignore: true)
  _$$ActorMoviesImplCopyWith<_$ActorMoviesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
