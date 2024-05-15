import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/movie/person/repository/model/person_model.dart';
import 'package:mega/features/movie/repository/model/movie_model.dart';

class PersonRepository {
  final ApiClient _apiClient;

  PersonRepository(this._apiClient);

  Future<PersonModel> getPerson(int id) async {
    final response = await _apiClient.get('person/$id') as Map<String, dynamic>;

    return PersonModel.fromJson(response);
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
