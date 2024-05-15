import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/menu/menu/repository/model/menu_model.dart';

class MenuRepository {
  final ApiClient _apiClient;

  MenuRepository(this._apiClient);

  Future<List<MenuModel>> getCategories(String query) async {
    final response = await _apiClient.get(
      '/api/v1/food/category/',
      queryParameters: {'search': query},
    ) as Map<String, dynamic>;

    final List list = response['results'];

    return list
        .map((e) => MenuModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
