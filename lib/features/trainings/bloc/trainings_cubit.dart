import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/trainings/repository/model/trainings_model.dart';
import 'package:mega/features/trainings/repository/trainings_repository.dart';

part 'trainings_cubit.freezed.dart';
part 'trainings_state.dart';

class TrainingsCubit extends Cubit<TrainingsState> {
  final TrainningsRepository _repository;
  TrainingsCubit(this._repository) : super(const TrainingsState.initial()) {
    getActiveQuiz();
  }

  Future<void> getActiveQuiz([String query = '']) async {
    emit(const TrainingsState.loading());
    try {
      final trainings = await _repository.getActiveQuiz(query: query);
      emit(TrainingsState.loaded(trainings));
    } on ServerException catch (e) {
      emit(TrainingsState.error(e.message ?? 'Server error'));
    }
  }

  Future<void> getPassedQuiz([String query = '']) async {
    emit(const TrainingsState.loading());
    try {
      final trainings = await _repository.getPassedQuiz(query: query);
      emit(TrainingsState.loaded(trainings));
    } on ServerException catch (e) {
      emit(TrainingsState.error(e.message ?? 'Server error'));
    }
  }
}
