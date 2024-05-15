part of 'movie_cubit.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.loading() = _Loading;
  const factory MovieState.success({required List<MovieModel> movies}) =
      _Success;
  const factory MovieState.error(String message) = _Error;
}
