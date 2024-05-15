// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premiere_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PremiereModel _$PremiereModelFromJson(Map<String, dynamic> json) {
  return _PremiereModel.fromJson(json);
}

/// @nodoc
mixin _$PremiereModel {
  String? get country => throw _privateConstructorUsedError;
  String? get russia => throw _privateConstructorUsedError;
  String? get digital => throw _privateConstructorUsedError;
  String? get cinema => throw _privateConstructorUsedError;
  String? get bluray => throw _privateConstructorUsedError;
  String? get dvd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PremiereModelCopyWith<PremiereModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PremiereModelCopyWith<$Res> {
  factory $PremiereModelCopyWith(
          PremiereModel value, $Res Function(PremiereModel) then) =
      _$PremiereModelCopyWithImpl<$Res, PremiereModel>;
  @useResult
  $Res call(
      {String? country,
      String? russia,
      String? digital,
      String? cinema,
      String? bluray,
      String? dvd});
}

/// @nodoc
class _$PremiereModelCopyWithImpl<$Res, $Val extends PremiereModel>
    implements $PremiereModelCopyWith<$Res> {
  _$PremiereModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? russia = freezed,
    Object? digital = freezed,
    Object? cinema = freezed,
    Object? bluray = freezed,
    Object? dvd = freezed,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      russia: freezed == russia
          ? _value.russia
          : russia // ignore: cast_nullable_to_non_nullable
              as String?,
      digital: freezed == digital
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as String?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as String?,
      bluray: freezed == bluray
          ? _value.bluray
          : bluray // ignore: cast_nullable_to_non_nullable
              as String?,
      dvd: freezed == dvd
          ? _value.dvd
          : dvd // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PremiereModelImplCopyWith<$Res>
    implements $PremiereModelCopyWith<$Res> {
  factory _$$PremiereModelImplCopyWith(
          _$PremiereModelImpl value, $Res Function(_$PremiereModelImpl) then) =
      __$$PremiereModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? country,
      String? russia,
      String? digital,
      String? cinema,
      String? bluray,
      String? dvd});
}

/// @nodoc
class __$$PremiereModelImplCopyWithImpl<$Res>
    extends _$PremiereModelCopyWithImpl<$Res, _$PremiereModelImpl>
    implements _$$PremiereModelImplCopyWith<$Res> {
  __$$PremiereModelImplCopyWithImpl(
      _$PremiereModelImpl _value, $Res Function(_$PremiereModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? russia = freezed,
    Object? digital = freezed,
    Object? cinema = freezed,
    Object? bluray = freezed,
    Object? dvd = freezed,
  }) {
    return _then(_$PremiereModelImpl(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      russia: freezed == russia
          ? _value.russia
          : russia // ignore: cast_nullable_to_non_nullable
              as String?,
      digital: freezed == digital
          ? _value.digital
          : digital // ignore: cast_nullable_to_non_nullable
              as String?,
      cinema: freezed == cinema
          ? _value.cinema
          : cinema // ignore: cast_nullable_to_non_nullable
              as String?,
      bluray: freezed == bluray
          ? _value.bluray
          : bluray // ignore: cast_nullable_to_non_nullable
              as String?,
      dvd: freezed == dvd
          ? _value.dvd
          : dvd // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PremiereModelImpl implements _PremiereModel {
  const _$PremiereModelImpl(
      {required this.country,
      required this.russia,
      required this.digital,
      required this.cinema,
      required this.bluray,
      required this.dvd});

  factory _$PremiereModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PremiereModelImplFromJson(json);

  @override
  final String? country;
  @override
  final String? russia;
  @override
  final String? digital;
  @override
  final String? cinema;
  @override
  final String? bluray;
  @override
  final String? dvd;

  @override
  String toString() {
    return 'PremiereModel(country: $country, russia: $russia, digital: $digital, cinema: $cinema, bluray: $bluray, dvd: $dvd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PremiereModelImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.russia, russia) || other.russia == russia) &&
            (identical(other.digital, digital) || other.digital == digital) &&
            (identical(other.cinema, cinema) || other.cinema == cinema) &&
            (identical(other.bluray, bluray) || other.bluray == bluray) &&
            (identical(other.dvd, dvd) || other.dvd == dvd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, country, russia, digital, cinema, bluray, dvd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PremiereModelImplCopyWith<_$PremiereModelImpl> get copyWith =>
      __$$PremiereModelImplCopyWithImpl<_$PremiereModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PremiereModelImplToJson(
      this,
    );
  }
}

abstract class _PremiereModel implements PremiereModel {
  const factory _PremiereModel(
      {required final String? country,
      required final String? russia,
      required final String? digital,
      required final String? cinema,
      required final String? bluray,
      required final String? dvd}) = _$PremiereModelImpl;

  factory _PremiereModel.fromJson(Map<String, dynamic> json) =
      _$PremiereModelImpl.fromJson;

  @override
  String? get country;
  @override
  String? get russia;
  @override
  String? get digital;
  @override
  String? get cinema;
  @override
  String? get bluray;
  @override
  String? get dvd;
  @override
  @JsonKey(ignore: true)
  _$$PremiereModelImplCopyWith<_$PremiereModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
