import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/trainings/training_details/repository/model/training_details_model.dart';

class TrainningDetailsRepository {
  final ApiClient _apiClient;

  TrainningDetailsRepository(this._apiClient);

  Future<TrainingDetailsModel> getTrainingDetails({required String id}) async {
    final response =
        await _apiClient.get('/api/v1/quiz/$id/') as Map<String, dynamic>;

    return TrainingDetailsModel.fromJson(response);
  }

  Future<void> resetTraining({required int id}) async {
    await _apiClient.post('/api/v1/quiz/reset/$id/');
  }
}
