import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/menu/food_details/repository/model/food_details_model.dart';

class FoodDetailsRepository {
  final ApiClient _apiClient;

  FoodDetailsRepository(this._apiClient);

  Future<FoodDetailsModel> getFoodDetails({
    required String id,
  }) async {
    final response =
        await _apiClient.get('/api/v1/food/$id/') as Map<String, dynamic>;

    return FoodDetailsModel.fromJson(response);
  }
}
