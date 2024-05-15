import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/menu/food/repository/model/food_model.dart';

class FoodRepository {
  final ApiClient _apiClient;

  FoodRepository(this._apiClient);

  Future<List<FoodModel>> getFoods({
    required String category,
    required String query,
  }) async {
    final response = await _apiClient.get(
      '/api/v1/food/',
      queryParameters: {
        'category': category,
        'search': query,
      },
    ) as Map<String, dynamic>;

    final List list = response['results'];

    return list
        .map((e) => FoodModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
