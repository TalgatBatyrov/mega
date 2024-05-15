import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/movie/repository/model/movie_model.dart';
import 'package:mega/features/movie/repository/movie_repository.dart';

part 'movie_cubit.freezed.dart';
part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  final MovieRepository movieRepository;
  MovieCubit(
    this.movieRepository,
  ) : super(const MovieState.initial()) {
    getMovies();
  }

  Future<void> getMovies([String query = '']) async {
    emit(const MovieState.loading());
    try {
      final movies = await movieRepository.getMovies(query);
      emit(MovieState.success(movies: movies));
    } on ServerException catch (e) {
      emit(MovieState.error(e.message ?? 'Server error'));
    }
  }

  Future<void> searchMovies(String query) async {
    emit(const MovieState.loading());
    try {
      final movies = await movieRepository.searchMovies(query);
      emit(MovieState.success(movies: movies));
    } on ServerException catch (e) {
      emit(MovieState.error(e.message ?? 'Server error'));
    }
  }
}
