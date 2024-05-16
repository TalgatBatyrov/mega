// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get alternativeName => throw _privateConstructorUsedError;
  String? get enName => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get typeNumber => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  RatingModel get rating => throw _privateConstructorUsedError;
  RatingModel get votes => throw _privateConstructorUsedError;
  int? get movieLength => throw _privateConstructorUsedError;
  int? get totalSeriesLength => throw _privateConstructorUsedError;
  int? get seriesLength => throw _privateConstructorUsedError;
  String? get ratingMpaa => throw _privateConstructorUsedError;
  int? get ageRating => throw _privateConstructorUsedError;
  PosterModel? get poster => throw _privateConstructorUsedError;
  PosterModel? get backdrop => throw _privateConstructorUsedError;
  List<GenresItemModel>? get genres => throw _privateConstructorUsedError;
  List<GenresItemModel>? get countries => throw _privateConstructorUsedError;
  int? get tip10 => throw _privateConstructorUsedError;
  int? get tip250 => throw _privateConstructorUsedError;
  bool? get isSeries => throw _privateConstructorUsedError;
  bool? get ticketsOnSale => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      String? enName,
      String? type,
      int? typeNumber,
      int? year,
      String? description,
      String? shortDescription,
      String? status,
      RatingModel rating,
      RatingModel votes,
      int? movieLength,
      int? totalSeriesLength,
      int? seriesLength,
      String? ratingMpaa,
      int? ageRating,
      PosterModel? poster,
      PosterModel? backdrop,
      List<GenresItemModel>? genres,
      List<GenresItemModel>? countries,
      int? tip10,
      int? tip250,
      bool? isSeries,
      bool? ticketsOnSale});

  $RatingModelCopyWith<$Res> get rating;
  $RatingModelCopyWith<$Res> get votes;
  $PosterModelCopyWith<$Res>? get poster;
  $PosterModelCopyWith<$Res>? get backdrop;
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

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
    Object? enName = freezed,
    Object? type = freezed,
    Object? typeNumber = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? status = freezed,
    Object? rating = null,
    Object? votes = null,
    Object? movieLength = freezed,
    Object? totalSeriesLength = freezed,
    Object? seriesLength = freezed,
    Object? ratingMpaa = freezed,
    Object? ageRating = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? genres = freezed,
    Object? countries = freezed,
    Object? tip10 = freezed,
    Object? tip250 = freezed,
    Object? isSeries = freezed,
    Object? ticketsOnSale = freezed,
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
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as RatingModel,
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
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as PosterModel?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      countries: freezed == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      tip10: freezed == tip10
          ? _value.tip10
          : tip10 // ignore: cast_nullable_to_non_nullable
              as int?,
      tip250: freezed == tip250
          ? _value.tip250
          : tip250 // ignore: cast_nullable_to_non_nullable
              as int?,
      isSeries: freezed == isSeries
          ? _value.isSeries
          : isSeries // ignore: cast_nullable_to_non_nullable
              as bool?,
      ticketsOnSale: freezed == ticketsOnSale
          ? _value.ticketsOnSale
          : ticketsOnSale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get rating {
    return $RatingModelCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingModelCopyWith<$Res> get votes {
    return $RatingModelCopyWith<$Res>(_value.votes, (value) {
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
  $PosterModelCopyWith<$Res>? get backdrop {
    if (_value.backdrop == null) {
      return null;
    }

    return $PosterModelCopyWith<$Res>(_value.backdrop!, (value) {
      return _then(_value.copyWith(backdrop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? alternativeName,
      String? enName,
      String? type,
      int? typeNumber,
      int? year,
      String? description,
      String? shortDescription,
      String? status,
      RatingModel rating,
      RatingModel votes,
      int? movieLength,
      int? totalSeriesLength,
      int? seriesLength,
      String? ratingMpaa,
      int? ageRating,
      PosterModel? poster,
      PosterModel? backdrop,
      List<GenresItemModel>? genres,
      List<GenresItemModel>? countries,
      int? tip10,
      int? tip250,
      bool? isSeries,
      bool? ticketsOnSale});

  @override
  $RatingModelCopyWith<$Res> get rating;
  @override
  $RatingModelCopyWith<$Res> get votes;
  @override
  $PosterModelCopyWith<$Res>? get poster;
  @override
  $PosterModelCopyWith<$Res>? get backdrop;
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? alternativeName = freezed,
    Object? enName = freezed,
    Object? type = freezed,
    Object? typeNumber = freezed,
    Object? year = freezed,
    Object? description = freezed,
    Object? shortDescription = freezed,
    Object? status = freezed,
    Object? rating = null,
    Object? votes = null,
    Object? movieLength = freezed,
    Object? totalSeriesLength = freezed,
    Object? seriesLength = freezed,
    Object? ratingMpaa = freezed,
    Object? ageRating = freezed,
    Object? poster = freezed,
    Object? backdrop = freezed,
    Object? genres = freezed,
    Object? countries = freezed,
    Object? tip10 = freezed,
    Object? tip250 = freezed,
    Object? isSeries = freezed,
    Object? ticketsOnSale = freezed,
  }) {
    return _then(_$MovieModelImpl(
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
      enName: freezed == enName
          ? _value.enName
          : enName // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingModel,
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as RatingModel,
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
      backdrop: freezed == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as PosterModel?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      countries: freezed == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<GenresItemModel>?,
      tip10: freezed == tip10
          ? _value.tip10
          : tip10 // ignore: cast_nullable_to_non_nullable
              as int?,
      tip250: freezed == tip250
          ? _value.tip250
          : tip250 // ignore: cast_nullable_to_non_nullable
              as int?,
      isSeries: freezed == isSeries
          ? _value.isSeries
          : isSeries // ignore: cast_nullable_to_non_nullable
              as bool?,
      ticketsOnSale: freezed == ticketsOnSale
          ? _value.ticketsOnSale
          : ticketsOnSale // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {required this.id,
      required this.name,
      required this.alternativeName,
      required this.enName,
      required this.type,
      required this.typeNumber,
      required this.year,
      required this.description,
      required this.shortDescription,
      required this.status,
      required this.rating,
      required this.votes,
      required this.movieLength,
      required this.totalSeriesLength,
      required this.seriesLength,
      required this.ratingMpaa,
      required this.ageRating,
      required this.poster,
      required this.backdrop,
      required final List<GenresItemModel>? genres,
      required final List<GenresItemModel>? countries,
      required this.tip10,
      required this.tip250,
      required this.isSeries,
      required this.ticketsOnSale})
      : _genres = genres,
        _countries = countries;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? alternativeName;
  @override
  final String? enName;
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
  final String? status;
  @override
  final RatingModel rating;
  @override
  final RatingModel votes;
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
  @override
  final PosterModel? backdrop;
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

  @override
  final int? tip10;
  @override
  final int? tip250;
  @override
  final bool? isSeries;
  @override
  final bool? ticketsOnSale;

  @override
  String toString() {
    return 'MovieModel(id: $id, name: $name, alternativeName: $alternativeName, enName: $enName, type: $type, typeNumber: $typeNumber, year: $year, description: $description, shortDescription: $shortDescription, status: $status, rating: $rating, votes: $votes, movieLength: $movieLength, totalSeriesLength: $totalSeriesLength, seriesLength: $seriesLength, ratingMpaa: $ratingMpaa, ageRating: $ageRating, poster: $poster, backdrop: $backdrop, genres: $genres, countries: $countries, tip10: $tip10, tip250: $tip250, isSeries: $isSeries, ticketsOnSale: $ticketsOnSale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alternativeName, alternativeName) ||
                other.alternativeName == alternativeName) &&
            (identical(other.enName, enName) || other.enName == enName) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeNumber, typeNumber) ||
                other.typeNumber == typeNumber) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
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
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.tip10, tip10) || other.tip10 == tip10) &&
            (identical(other.tip250, tip250) || other.tip250 == tip250) &&
            (identical(other.isSeries, isSeries) ||
                other.isSeries == isSeries) &&
            (identical(other.ticketsOnSale, ticketsOnSale) ||
                other.ticketsOnSale == ticketsOnSale));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        alternativeName,
        enName,
        type,
        typeNumber,
        year,
        description,
        shortDescription,
        status,
        rating,
        votes,
        movieLength,
        totalSeriesLength,
        seriesLength,
        ratingMpaa,
        ageRating,
        poster,
        backdrop,
        const DeepCollectionEquality().hash(_genres),
        const DeepCollectionEquality().hash(_countries),
        tip10,
        tip250,
        isSeries,
        ticketsOnSale
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final int id,
      required final String? name,
      required final String? alternativeName,
      required final String? enName,
      required final String? type,
      required final int? typeNumber,
      required final int? year,
      required final String? description,
      required final String? shortDescription,
      required final String? status,
      required final RatingModel rating,
      required final RatingModel votes,
      required final int? movieLength,
      required final int? totalSeriesLength,
      required final int? seriesLength,
      required final String? ratingMpaa,
      required final int? ageRating,
      required final PosterModel? poster,
      required final PosterModel? backdrop,
      required final List<GenresItemModel>? genres,
      required final List<GenresItemModel>? countries,
      required final int? tip10,
      required final int? tip250,
      required final bool? isSeries,
      required final bool? ticketsOnSale}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get alternativeName;
  @override
  String? get enName;
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
  String? get status;
  @override
  RatingModel get rating;
  @override
  RatingModel get votes;
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
  PosterModel? get backdrop;
  @override
  List<GenresItemModel>? get genres;
  @override
  List<GenresItemModel>? get countries;
  @override
  int? get tip10;
  @override
  int? get tip250;
  @override
  bool? get isSeries;
  @override
  bool? get ticketsOnSale;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
