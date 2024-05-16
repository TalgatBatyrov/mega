import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/movies/movie/repository/model/movie_model.dart';

class MovieRepository {
  final ApiClient _apiClient;

  MovieRepository(this._apiClient);

  Future<List<MovieModel>> getMovies({
    required String query,
    required int page,
  }) async {
    final response = await _apiClient.get(
      'movie',
      queryParameters: {
        'page': page,
        'notNullFields': 'poster.url',
      },
    ) as Map<String, dynamic>;

    final List list = response['docs'];

    return list
        .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<List<MovieModel>> searchMovies({
    required String query,
    required int page,
  }) async {
    final response = await _apiClient.get(
      'movie/search',
      queryParameters: {
        'page': page,
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
