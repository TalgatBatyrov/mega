import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/movie/repository/model/movie_model.dart';

class MovieRepository {
  final ApiClient _apiClient;

  MovieRepository(this._apiClient);

  Future<List<MovieModel>> getMovies(String query) async {
    final response = await _apiClient.get(
      'movie',
      queryParameters: {
        'page': 1,
        'limit': 10,
        'notNullFields': 'poster.url',
      },
    ) as Map<String, dynamic>;

    final List list = response['docs'];

    return list
        .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<MovieModel>> searchMovies(String query) async {
    final response = await _apiClient.get(
      'movie/search',
      queryParameters: {
        'page': 1,
        'limit': 10,
        'notNullFields': 'poster.url',
        'query': query,
      },
    ) as Map<String, dynamic>;

    final List list = response['docs'];

    return list
        .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
