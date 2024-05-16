import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movies/movie_details/bloc/movie_details_cubit.dart';
import 'package:mega/features/movies/movie_details/widget/jenres_widget.dart';
import 'package:mega/features/movies/movie_details/widget/movie_actors.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/chip_widget.dart';
import 'package:mega/ui/widgets/movie_back_button.dart';
import 'package:mega/ui/widgets/movie_details_loading.dart';
import 'package:mega/ui/widgets/movie_error.dart';
import 'package:mega/ui/widgets/photo_widget.dart';
import 'package:mega/ui/widgets/title_widget.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MovieDetailsCubit(context.read())..getMovieDetails(movieId),
      child: Scaffold(
        backgroundColor: MovieColors.blackBackground,
        body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
          builder: (context, state) {
            return state.when(
              error: (e) => MovieError(message: e),
              loading: () => const MovieDetailsLoading(),
              success: (movieDetails) {
                return ListView(
                  children: [
                    PhotoWidget(
                      photo: movieDetails.poster?.url ??
                          movieDetails.poster?.previewUrl,
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  movieDetails.name ??
                                      movieDetails.alternativeName ??
                                      '',
                                  style: const TextStyle(
                                    color: MovieColors.textColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              ...movieDetails.countries!.map(
                                (country) => ChipWidget(value: country.name),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TittleWidget(title: 'Описание'),
                              Text(
                                movieDetails.description ?? '...',
                                style: const TextStyle(
                                  color: MovieColors.white,
                                  fontSize: 15,
                                ),
                              ),
                              JenresWidget(movieDetails: movieDetails),
                              MovieActors(movieDetails: movieDetails),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: const MovieBackButton(),
      ),
    );
  }
}
