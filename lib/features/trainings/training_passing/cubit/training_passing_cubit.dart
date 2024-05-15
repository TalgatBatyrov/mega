import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/trainings/training_passing/repository/model/training_passing_model/training_passing_model.dart';
import 'package:mega/features/trainings/training_passing/repository/training_passing_repository.dart';

part 'training_passing_cubit.freezed.dart';
part 'training_passing_state.dart';

enum QuizType { option, text }

class TrainingPassingCubit extends Cubit<TrainingPassingState> {
  final TrainningPassingRepository _repository;
  TrainingPassingCubit(this._repository)
      : super(const TrainingPassingState.initial());

  Future<void> getQuizQuestions({
    required int quizId,
    String query = '',
  }) async {
    emit(const TrainingPassingState.loading());
    try {
      final response =
          await _repository.getQuizQuestions(quizId: quizId, query: query);
      emit(TrainingPassingState.success(response));
    } on ServerException catch (e) {
      emit(TrainingPassingState.error(e.message ?? 'Server error'));
    }
  }

  Future<void> setQuizAnswer({
    required int questionId,
    required int answerId,
    String textAnswer = '',
    required QuizType type,
  }) async {
    try {
      final status = await _repository.setQuizAnswer(
        questionId: questionId,
        answerId: answerId,
        textAnswer: textAnswer,
        type: type,
      );

      if (status.isNotEmpty) {
        emit(TrainingPassingState.completeAnswer(status));
      }
    } on ServerException catch (e) {
      emit(TrainingPassingState.error(e.message ?? 'Server error'));
    }
  }
}
