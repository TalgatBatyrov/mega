import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/features/movie/movie_details/repository/model/movie_details_model.dart';
import 'package:mega/features/movie/movie_details/repository/movie_details_repository.dart';

part 'movie_details_cubit.freezed.dart';
part 'movie_details_state.dart';

class MovieDetailsCubit extends Cubit<MovieDetailsState> {
  final MovieDetailsRepository _movieDetailsRepository;
  MovieDetailsCubit(this._movieDetailsRepository)
      : super(const MovieDetailsState.initial());

  Future<void> getMovieDetails(String id) async {
    try {
      emit(const MovieDetailsState.loading());
      final homeDetails = await _movieDetailsRepository.getMovieDetails(id);
      emit(MovieDetailsState.success(homeDetails));
    } catch (e) {
      emit(const MovieDetailsState.error());
    }
  }
}
