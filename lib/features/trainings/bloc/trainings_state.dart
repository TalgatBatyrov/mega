part of 'trainings_cubit.dart';

@freezed
class TrainingsState with _$TrainingsState {
  const factory TrainingsState.initial() = _Initial;
  const factory TrainingsState.loading() = _Loading;
  const factory TrainingsState.loaded(List<TrainingsModel> trainings) = _Loaded;
  const factory TrainingsState.error(String message) = _Error;
}
