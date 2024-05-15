// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poster_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PosterModel _$PosterModelFromJson(Map<String, dynamic> json) {
  return _PosterModel.fromJson(json);
}

/// @nodoc
mixin _$PosterModel {
  String? get url => throw _privateConstructorUsedError;
  String? get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PosterModelCopyWith<PosterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PosterModelCopyWith<$Res> {
  factory $PosterModelCopyWith(
          PosterModel value, $Res Function(PosterModel) then) =
      _$PosterModelCopyWithImpl<$Res, PosterModel>;
  @useResult
  $Res call({String? url, String? previewUrl});
}

/// @nodoc
class _$PosterModelCopyWithImpl<$Res, $Val extends PosterModel>
    implements $PosterModelCopyWith<$Res> {
  _$PosterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PosterModelImplCopyWith<$Res>
    implements $PosterModelCopyWith<$Res> {
  factory _$$PosterModelImplCopyWith(
          _$PosterModelImpl value, $Res Function(_$PosterModelImpl) then) =
      __$$PosterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, String? previewUrl});
}

/// @nodoc
class __$$PosterModelImplCopyWithImpl<$Res>
    extends _$PosterModelCopyWithImpl<$Res, _$PosterModelImpl>
    implements _$$PosterModelImplCopyWith<$Res> {
  __$$PosterModelImplCopyWithImpl(
      _$PosterModelImpl _value, $Res Function(_$PosterModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$PosterModelImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PosterModelImpl implements _PosterModel {
  const _$PosterModelImpl({required this.url, required this.previewUrl});

  factory _$PosterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PosterModelImplFromJson(json);

  @override
  final String? url;
  @override
  final String? previewUrl;

  @override
  String toString() {
    return 'PosterModel(url: $url, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PosterModelImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PosterModelImplCopyWith<_$PosterModelImpl> get copyWith =>
      __$$PosterModelImplCopyWithImpl<_$PosterModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PosterModelImplToJson(
      this,
    );
  }
}

abstract class _PosterModel implements PosterModel {
  const factory _PosterModel(
      {required final String? url,
      required final String? previewUrl}) = _$PosterModelImpl;

  factory _PosterModel.fromJson(Map<String, dynamic> json) =
      _$PosterModelImpl.fromJson;

  @override
  String? get url;
  @override
  String? get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$PosterModelImplCopyWith<_$PosterModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
