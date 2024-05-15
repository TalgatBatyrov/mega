// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
mixin _$PersonModel {
  bool? get isParse => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get enName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  List<ProfessionModel> get profession => throw _privateConstructorUsedError;
  List<ProfessionModel>? get birthPlace => throw _privateConstructorUsedError;
  List<ActorMovies> get movies => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String get sex => throw _privateConstructorUsedError;
  DateTime? get birthday => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res, PersonModel>;
  @useResult
  $Res call(
      {bool? isParse,
      int id,
      String? name,
      String? enName,
      String? photo,
      List<ProfessionModel> profession,
      List<ProfessionModel>? birthPlace,
      List<ActorMovies> movies,
      int? age,
      String sex,
      DateTime? birthday});
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res, $Val extends PersonModel>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isParse = freezed,
    Object? id = null,
    Object? name = freezed,
    Object? enName = freezed,
    Object? photo = freezed,
    Object? profession = null,
    Object? birthPlace = freezed,
    Object? movies = null,
    Object? age = freezed,
    Object? sex = null,
    Object? birthday = freezed,
  }) {
    return _then(_value.copyWith(
      isParse: freezed == isParse
          ? _value.isParse
          : isParse // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: null == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as List<ProfessionModel>,
      birthPlace: freezed == birthPlace
          ? _value.birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as List<ProfessionModel>?,
      movies: null == movies
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<ActorMovies>,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PersonModelImplCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$$PersonModelImplCopyWith(
          _$PersonModelImpl value, $Res Function(_$PersonModelImpl) then) =
      __$$PersonModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isParse,
      int id,
      String? name,
      String? enName,
      String? photo,
      List<ProfessionModel> profession,
      List<ProfessionModel>? birthPlace,
      List<ActorMovies> movies,
      int? age,
      String sex,
      DateTime? birthday});
}

/// @nodoc
class __$$PersonModelImplCopyWithImpl<$Res>
    extends _$PersonModelCopyWithImpl<$Res, _$PersonModelImpl>
    implements _$$PersonModelImplCopyWith<$Res> {
  __$$PersonModelImplCopyWithImpl(
      _$PersonModelImpl _value, $Res Function(_$PersonModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isParse = freezed,
    Object? id = null,
    Object? name = freezed,
    Object? enName = freezed,
    Object? photo = freezed,
    Object? profession = null,
    Object? birthPlace = freezed,
    Object? movies = null,
    Object? age = freezed,
    Object? sex = null,
    Object? birthday = freezed,
  }) {
    return _then(_$PersonModelImpl(
      isParse: freezed == isParse
          ? _value.isParse
          : isParse // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: null == profession
          ? _value._profession
          : profession // ignore: cast_nullable_to_non_nullable
              as List<ProfessionModel>,
      birthPlace: freezed == birthPlace
          ? _value._birthPlace
          : birthPlace // ignore: cast_nullable_to_non_nullable
              as List<ProfessionModel>?,
      movies: null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<ActorMovies>,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PersonModelImpl implements _PersonModel {
  const _$PersonModelImpl(
      {required this.isParse,
      required this.id,
      required this.name,
      required this.enName,
      required this.photo,
      required final List<ProfessionModel> profession,
      required final List<ProfessionModel>? birthPlace,
      required final List<ActorMovies> movies,
      required this.age,
      required this.sex,
      required this.birthday})
      : _profession = profession,
        _birthPlace = birthPlace,
        _movies = movies;

  factory _$PersonModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PersonModelImplFromJson(json);

  @override
  final bool? isParse;
  @override
  final int id;
  @override
  final String? name;
  @override
  final String? enName;
  @override
  final String? photo;
  final List<ProfessionModel> _profession;
  @override
  List<ProfessionModel> get profession {
    if (_profession is EqualUnmodifiableListView) return _profession;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profession);
  }

  final List<ProfessionModel>? _birthPlace;
  @override
  List<ProfessionModel>? get birthPlace {
    final value = _birthPlace;
    if (value == null) return null;
    if (_birthPlace is EqualUnmodifiableListView) return _birthPlace;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ActorMovies> _movies;
  @override
  List<ActorMovies> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  final int? age;
  @override
  final String sex;
  @override
  final DateTime? birthday;

  @override
  String toString() {
    return 'PersonModel(isParse: $isParse, id: $id, name: $name, enName: $enName, photo: $photo, profession: $profession, birthPlace: $birthPlace, movies: $movies, age: $age, sex: $sex, birthday: $birthday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonModelImpl &&
            (identical(other.isParse, isParse) || other.isParse == isParse) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            const DeepCollectionEquality()
                .equals(other._profession, _profession) &&
            const DeepCollectionEquality()
                .equals(other._birthPlace, _birthPlace) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isParse,
      id,
      name,
      enName,
      photo,
      const DeepCollectionEquality().hash(_profession),
      const DeepCollectionEquality().hash(_birthPlace),
      const DeepCollectionEquality().hash(_movies),
      age,
      sex,
      birthday);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonModelImplCopyWith<_$PersonModelImpl> get copyWith =>
      __$$PersonModelImplCopyWithImpl<_$PersonModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonModelImplToJson(
      this,
    );
  }
}

abstract class _PersonModel implements PersonModel {
  const factory _PersonModel(
      {required final bool? isParse,
      required final int id,
      required final String? name,
      required final String? enName,
      required final String? photo,
      required final List<ProfessionModel> profession,
      required final List<ProfessionModel>? birthPlace,
      required final List<ActorMovies> movies,
      required final int? age,
      required final String sex,
      required final DateTime? birthday}) = _$PersonModelImpl;

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$PersonModelImpl.fromJson;

  @override
  bool? get isParse;
  @override
  int get id;
  @override
  String? get name;
  @override
  String? get enName;
  @override
  String? get photo;
  @override
  List<ProfessionModel> get profession;
  @override
  List<ProfessionModel>? get birthPlace;
  @override
  List<ActorMovies> get movies;
  @override
  int? get age;
  @override
  String get sex;
  @override
  DateTime? get birthday;
  @override
  @JsonKey(ignore: true)
  _$$PersonModelImplCopyWith<_$PersonModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
