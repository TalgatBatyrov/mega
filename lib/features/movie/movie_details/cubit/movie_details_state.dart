part of 'movie_details_cubit.dart';

@freezed
class MovieDetailsState with _$MovieDetailsState {
  const factory MovieDetailsState.initial() = _Initial;

  const factory MovieDetailsState.loading() = _Loading;

  const factory MovieDetailsState.success(MovieDetailsModel homeDetails) =
      _Success;

  const factory MovieDetailsState.error() = _Error;
}
