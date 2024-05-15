import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movie/bloc/movie_cubit.dart';
import 'package:mega/features/movie/widget/movie_element.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MovieCubit, MovieState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const AnarLoading(),
            loading: () => const AnarLoading(),
            success: (movies) {
              return movies.isNotEmpty
                  ? GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 10,
                        mainAxisExtent: 250,
                      ),
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return MovieElement(movie: movie);
                      },
                    )
                  : const Center(
                      child: Text('No data found'),
                    );
            },
          );
        },
      ),
    );
  }
}
