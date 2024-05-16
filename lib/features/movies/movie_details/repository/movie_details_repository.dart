import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/movies/movie_details/repository/model/movie_details_model.dart';

class MovieDetailsRepository {
  final ApiClient _apiClient;

  MovieDetailsRepository(this._apiClient);

  Future<MovieDetailsModel> getMovieDetails(String id) async {
    final response = await _apiClient.get('movie/$id') as Map<String, dynamic>;
    return MovieDetailsModel.fromJson(response);
  }
}
