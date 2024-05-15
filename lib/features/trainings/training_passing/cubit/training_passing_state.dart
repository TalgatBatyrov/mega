part of 'training_passing_cubit.dart';

@freezed
class TrainingPassingState with _$TrainingPassingState {
  const factory TrainingPassingState.initial() = _Initial;
  const factory TrainingPassingState.loading() = _Loading;
  const factory TrainingPassingState.success(
      List<TrainingPassingModel> trainings) = _Success;

  const factory TrainingPassingState.completeAnswer(String status) =
      _CompleteAnswer;
  const factory TrainingPassingState.error(String message) = _Error;
}
