import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/trainings/repository/model/trainings_model.dart';

class TrainningsRepository {
  final ApiClient _apiClient;

  TrainningsRepository(this._apiClient);

  Future<List<TrainingsModel>> getActiveQuiz({required String query}) async {
    final response = await _apiClient.get(
      '/api/v1/quiz/active/',
      queryParameters: {'search': query},
    ) as List;

    return response
        .map((e) => TrainingsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<TrainingsModel>> getPassedQuiz({required String query}) async {
    final response = await _apiClient.get(
      '/api/v1/quiz/passed/',
      queryParameters: {'search': query},
    ) as List;

    return response
        .map((e) => TrainingsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
