import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/trainings/training_details/repository/model/training_details_model.dart';
import 'package:mega/features/trainings/training_details/repository/training_details_repository.dart';

part 'training_details_cubit.freezed.dart';
part 'training_details_state.dart';

class TrainingDetailsCubit extends Cubit<TrainingDetailsState> {
  final TrainningDetailsRepository _repository;
  TrainingDetailsCubit(this._repository)
      : super(const TrainingDetailsState.initial());

  Future<void> getTrainingDetails({required String id}) async {
    emit(const TrainingDetailsState.loading());
    try {
      final trainingDetails = await _repository.getTrainingDetails(id: id);
      emit(TrainingDetailsState.success(trainingDetails));
    } on ServerException catch (e) {
      emit(TrainingDetailsState.error(e.message ?? 'Server error'));
    }
  }

  Future<void> resetTraining({required int id}) async {
    emit(const TrainingDetailsState.loading());
    try {
      await _repository.resetTraining(id: id);
      emit(const TrainingDetailsState.reseted());
    } on ServerException catch (e) {
      emit(TrainingDetailsState.error(e.message ?? 'Server error'));
    }
  }
}
