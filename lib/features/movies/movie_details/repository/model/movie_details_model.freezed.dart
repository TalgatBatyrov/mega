// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieDetailsModel _$MovieDetailsModelFromJson(Map<String, dynamic> json) {
  return _HomeDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$MovieDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get alternativeName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get typeNumber => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get slogan => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  RatingModel? get rating => throw _privateConstructorUsedError;
  RatingModel? get votes => throw _privateConstructorUsedError;
  int? get movieLength => throw _privateConstructorUsedError;
  int? get totalSeriesLength => throw _privateConstructorUsedError;
  int? get seriesLength => throw _privateConstructorUsedError;
  String? get ratingMpaa => throw _privateConstructorUsedError;
  int? get ageRating => throw _privateConstructorUsedError;
  PosterModel? get poster => throw _privateConstructorUsedError;
  List<GenresItemModel>? get genres => throw _privateConstructorUsedError;
  List<GenresItemModel>? get countries => throw _privateConstructorUsedError;
  List<PersonModel>? get persons => throw _privateConstructorUsedError;
  PremiereModel? get premiere => throw _privateConstructorUsedError;
  List<ReleaseYearModel>? get releaseYears =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsModelCopyWith<MovieDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsModelCopyWith<$Res> {
  factory $MovieDetailsModelCopyWith(
          MovieDetailsModel value, $Res Function(MovieDetailsModel) then) =
      _$MovieDetailsModelCopyWithImpl<$Res, MovieDetailsModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      String? type,
      int? typeNumber,
      int? year,
      String? description,
      String? shortDescription,
      String? slogan,
      String? status,
      RatingModel? rating,
      RatingModel? votes,
      int? movieLength,
      int? totalSeriesLength,
      int? seriesLength,
      String? ratingMpaa,
      int? ageRating,
      PosterModel? poster,
      List<GenresItemModel>? genres,
      List<GenresItemModel>? countries,
      List<PersonModel>? persons,
      PremiereModel? premiere,
      List<ReleaseYearModel>? releaseYears});

  $RatingModelCopyWith<$Res>? get rating;
  $RatingModelCopyWith<$Res>? get votes;
  $PosterModelCopyWith<$Res>? get poster;
  $PremiereModelCopyWith<$Res>? get premiere;
}

/// @nodoc
class _$MovieDetailsModelCopyWithImpl<$Res, $Val extends MovieDetailsModel>
    implements $MovieDetailsModelCopyWith<$Res> {
  _$MovieDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? typeNumber = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? slogan = freezed,
    Object? status = freezed,
    Object? rating = freezed,
    Object? votes = freezed,
    Object? movieLength = freezed,
    Object? totalSeriesLength = freezed,
    Object? seriesLength = freezed,
    Object? ratingMpaa = freezed,
    Object? ageRating = freezed,
    Object? poster = freezed,
    Object? genres = freezed,
    Object? countries = freezed,
    Object? persons = freezed,
    Object? premiere = freezed,
    Object? releaseYears = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeNumber: freezed == typeNumber
          ? _value.typeNumber
          : typeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      slogan: freezed == slogan
          ? _value.slogan
          : slogan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      movieLength: freezed == movieLength
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSeriesLength: freezed == totalSeriesLength
          ? _value.totalSeriesLength
          : totalSeriesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesLength: freezed == seriesLength
          ? _value.seriesLength
          : seriesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingMpaa: freezed == ratingMpaa
          ? _value.ratingMpaa
          : ratingMpaa // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRating: freezed == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as PosterModel?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      persons: freezed == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>?,
      premiere: freezed == premiere
          ? _value.premiere
          : premiere // ignore: cast_nullable_to_non_nullable
              as PremiereModel?,
      releaseYears: freezed == releaseYears
          ? _value.releaseYears
          : releaseYears // ignore: cast_nullable_to_non_nullable
              as List<ReleaseYearModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingModelCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res>? get votes {
    if (_value.votes == null) {
      return null;
    }

    return $RatingModelCopyWith<$Res>(_value.votes!, (value) {
      return _then(_value.copyWith(votes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PosterModelCopyWith<$Res>? get poster {
    if (_value.poster == null) {
      return null;
    }

    return $PosterModelCopyWith<$Res>(_value.poster!, (value) {
      return _then(_value.copyWith(poster: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PremiereModelCopyWith<$Res>? get premiere {
    if (_value.premiere == null) {
      return null;
    }

    return $PremiereModelCopyWith<$Res>(_value.premiere!, (value) {
      return _then(_value.copyWith(premiere: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDetailsModelImplCopyWith<$Res>
    implements $MovieDetailsModelCopyWith<$Res> {
  factory _$$HomeDetailsModelImplCopyWith(_$HomeDetailsModelImpl value,
          $Res Function(_$HomeDetailsModelImpl) then) =
      __$$HomeDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      String? type,
      int? typeNumber,
      int? year,
      String? description,
      String? shortDescription,
      String? slogan,
      String? status,
      RatingModel? rating,
      RatingModel? votes,
      int? movieLength,
      int? totalSeriesLength,
      int? seriesLength,
      String? ratingMpaa,
      int? ageRating,
      PosterModel? poster,
      List<GenresItemModel>? genres,
      List<GenresItemModel>? countries,
      List<PersonModel>? persons,
      PremiereModel? premiere,
      List<ReleaseYearModel>? releaseYears});

  @override
  $RatingModelCopyWith<$Res>? get rating;
  @override
  $RatingModelCopyWith<$Res>? get votes;
  @override
  $PosterModelCopyWith<$Res>? get poster;
  @override
  $PremiereModelCopyWith<$Res>? get premiere;
}

/// @nodoc
class __$$HomeDetailsModelImplCopyWithImpl<$Res>
    extends _$MovieDetailsModelCopyWithImpl<$Res, _$HomeDetailsModelImpl>
    implements _$$HomeDetailsModelImplCopyWith<$Res> {
  __$$HomeDetailsModelImplCopyWithImpl(_$HomeDetailsModelImpl _value,
      $Res Function(_$HomeDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? alternativeName = freezed,
    Object? type = freezed,
    Object? typeNumber = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? slogan = freezed,
    Object? status = freezed,
    Object? rating = freezed,
    Object? votes = freezed,
    Object? movieLength = freezed,
    Object? totalSeriesLength = freezed,
    Object? seriesLength = freezed,
    Object? ratingMpaa = freezed,
    Object? ageRating = freezed,
    Object? poster = freezed,
    Object? genres = freezed,
    Object? countries = freezed,
    Object? persons = freezed,
    Object? premiere = freezed,
    Object? releaseYears = freezed,
  }) {
    return _then(_$HomeDetailsModelImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      typeNumber: freezed == typeNumber
          ? _value.typeNumber
          : typeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      slogan: freezed == slogan
          ? _value.slogan
          : slogan // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      votes: freezed == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as RatingModel?,
      movieLength: freezed == movieLength
          ? _value.movieLength
          : movieLength // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSeriesLength: freezed == totalSeriesLength
          ? _value.totalSeriesLength
          : totalSeriesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      seriesLength: freezed == seriesLength
          ? _value.seriesLength
          : seriesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      ratingMpaa: freezed == ratingMpaa
          ? _value.ratingMpaa
          : ratingMpaa // ignore: cast_nullable_to_non_nullable
              as String?,
      ageRating: freezed == ageRating
          ? _value.ageRating
          : ageRating // ignore: cast_nullable_to_non_nullable
              as int?,
      poster: freezed == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as PosterModel?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      persons: freezed == persons
          ? _value._persons
          : persons // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>?,
      premiere: freezed == premiere
          ? _value.premiere
          : premiere // ignore: cast_nullable_to_non_nullable
              as PremiereModel?,
      releaseYears: freezed == releaseYears
          ? _value._releaseYears
          : releaseYears // ignore: cast_nullable_to_non_nullable
              as List<ReleaseYearModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeDetailsModelImpl implements _HomeDetailsModel {
  const _$HomeDetailsModelImpl(
      {required this.id,
      required this.name,
      required this.alternativeName,
      required this.type,
      required this.typeNumber,
      required this.year,
      required this.description,
      required this.shortDescription,
      required this.slogan,
      required this.status,
      required this.rating,
      required this.votes,
      required this.movieLength,
      required this.totalSeriesLength,
      required this.seriesLength,
      required this.ratingMpaa,
      required this.ageRating,
      required this.poster,
      required final List<GenresItemModel>? genres,
      required final List<GenresItemModel>? countries,
      required final List<PersonModel>? persons,
      required this.premiere,
      required final List<ReleaseYearModel>? releaseYears})
      : _genres = genres,
        _countries = countries,
        _persons = persons,
        _releaseYears = releaseYears;

  factory _$HomeDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDetailsModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? alternativeName;
  @override
  final String? type;
  @override
  final int? typeNumber;
  @override
  final int? year;
  @override
  final String? description;
  @override
  final String? shortDescription;
  @override
  final String? slogan;
  @override
  final String? status;
  @override
  final RatingModel? rating;
  @override
  final RatingModel? votes;
  @override
  final int? movieLength;
  @override
  final int? totalSeriesLength;
  @override
  final int? seriesLength;
  @override
  final String? ratingMpaa;
  @override
  final int? ageRating;
  @override
  final PosterModel? poster;
  final List<GenresItemModel>? _genres;
  @override
  List<GenresItemModel>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GenresItemModel>? _countries;
  @override
  List<GenresItemModel>? get countries {
    final value = _countries;
    if (value == null) return null;
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PersonModel>? _persons;
  @override
  List<PersonModel>? get persons {
    final value = _persons;
    if (value == null) return null;
    if (_persons is EqualUnmodifiableListView) return _persons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PremiereModel? premiere;
  final List<ReleaseYearModel>? _releaseYears;
  @override
  List<ReleaseYearModel>? get releaseYears {
    final value = _releaseYears;
    if (value == null) return null;
    if (_releaseYears is EqualUnmodifiableListView) return _releaseYears;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MovieDetailsModel(id: $id, name: $name, alternativeName: $alternativeName, type: $type, typeNumber: $typeNumber, year: $year, description: $description, shortDescription: $shortDescription, slogan: $slogan, status: $status, rating: $rating, votes: $votes, movieLength: $movieLength, totalSeriesLength: $totalSeriesLength, seriesLength: $seriesLength, ratingMpaa: $ratingMpaa, ageRating: $ageRating, poster: $poster, genres: $genres, countries: $countries, persons: $persons, premiere: $premiere, releaseYears: $releaseYears)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alternativeName, alternativeName) ||
                other.alternativeName == alternativeName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeNumber, typeNumber) ||
                other.typeNumber == typeNumber) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.slogan, slogan) || other.slogan == slogan) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.votes, votes) || other.votes == votes) &&
            (identical(other.movieLength, movieLength) ||
                other.movieLength == movieLength) &&
            (identical(other.totalSeriesLength, totalSeriesLength) ||
                other.totalSeriesLength == totalSeriesLength) &&
            (identical(other.seriesLength, seriesLength) ||
                other.seriesLength == seriesLength) &&
            (identical(other.ratingMpaa, ratingMpaa) ||
                other.ratingMpaa == ratingMpaa) &&
            (identical(other.ageRating, ageRating) ||
                other.ageRating == ageRating) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            const DeepCollectionEquality().equals(other._persons, _persons) &&
            (identical(other.premiere, premiere) ||
                other.premiere == premiere) &&
            const DeepCollectionEquality()
                .equals(other._releaseYears, _releaseYears));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        alternativeName,
        type,
        typeNumber,
        year,
        description,
        shortDescription,
        slogan,
        status,
        rating,
        votes,
        movieLength,
        totalSeriesLength,
        seriesLength,
        ratingMpaa,
        ageRating,
        poster,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_countries),
        const DeepCollectionEquality().hash(_persons),
        premiere,
        const DeepCollectionEquality().hash(_releaseYears)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDetailsModelImplCopyWith<_$HomeDetailsModelImpl> get copyWith =>
      __$$HomeDetailsModelImplCopyWithImpl<_$HomeDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDetailsModel implements MovieDetailsModel {
  const factory _HomeDetailsModel(
          {required final int id,
          required final String? name,
          required final String? alternativeName,
          required final String? type,
          required final int? typeNumber,
          required final int? year,
          required final String? description,
          required final String? shortDescription,
          required final String? slogan,
          required final String? status,
          required final RatingModel? rating,
          required final RatingModel? votes,
          required final int? movieLength,
          required final int? totalSeriesLength,
          required final int? seriesLength,
          required final String? ratingMpaa,
          required final int? ageRating,
          required final PosterModel? poster,
          required final List<GenresItemModel>? genres,
          required final List<GenresItemModel>? countries,
          required final List<PersonModel>? persons,
          required final PremiereModel? premiere,
          required final List<ReleaseYearModel>? releaseYears}) =
      _$HomeDetailsModelImpl;

  factory _HomeDetailsModel.fromJson(Map<String, dynamic> json) =
      _$HomeDetailsModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get alternativeName;
  @override
  String? get type;
  @override
  int? get typeNumber;
  @override
  int? get year;
  @override
  String? get description;
  @override
  String? get shortDescription;
  @override
  String? get slogan;
  @override
  String? get status;
  @override
  RatingModel? get rating;
  @override
  RatingModel? get votes;
  @override
  int? get movieLength;
  @override
  int? get totalSeriesLength;
  @override
  int? get seriesLength;
  @override
  String? get ratingMpaa;
  @override
  int? get ageRating;
  @override
  PosterModel? get poster;
  @override
  List<GenresItemModel>? get genres;
  @override
  List<GenresItemModel>? get countries;
  @override
  List<PersonModel>? get persons;
  @override
  PremiereModel? get premiere;
  @override
  List<ReleaseYearModel>? get releaseYears;
  @override
  @JsonKey(ignore: true)
  _$$HomeDetailsModelImplCopyWith<_$HomeDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
