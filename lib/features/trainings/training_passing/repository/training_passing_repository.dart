import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/trainings/training_passing/cubit/training_passing_cubit.dart';
import 'package:mega/features/trainings/training_passing/repository/model/training_passing_model/training_passing_model.dart';

class TrainningPassingRepository {
  final ApiClient _apiClient;

  TrainningPassingRepository(this._apiClient);

  Future<List<TrainingPassingModel>> getQuizQuestions({
    required int quizId,
    required String query,
  }) async {
    final response = await _apiClient.get(
      '/api/v1/quiz/question/',
      queryParameters: {'quiz': quizId, 'search': query},
    ) as List;

    return response
        .map((e) => TrainingPassingModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<String> setQuizAnswer({
    required int questionId,
    required int answerId,
    String textAnswer = '',
    required QuizType type,
  }) async {
    final response = await _apiClient.post(
      '/api/v1/quiz/answer/qeustion/$questionId/',
      body: type == QuizType.text
          ? {'text_answer': textAnswer}
          : {'option_answer': answerId},
    );

    if (response.toString().isNotEmpty) {
      return response['status'].toString();
    } else {
      return '';
    }
  }
}
