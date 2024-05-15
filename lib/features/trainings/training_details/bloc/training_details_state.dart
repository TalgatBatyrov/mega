part of 'training_details_cubit.dart';

@freezed
class TrainingDetailsState with _$TrainingDetailsState {
  const factory TrainingDetailsState.initial() = _Initial;
  const factory TrainingDetailsState.loading() = _Loading;
  const factory TrainingDetailsState.success(
      TrainingDetailsModel trainingDetails) = _Loaded;
  const factory TrainingDetailsState.reseted() = _Reseted;
  const factory TrainingDetailsState.error(String message) = _Error;
}
