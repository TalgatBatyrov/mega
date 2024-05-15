import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movie/movie_details/cubit/movie_details_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/app_back_button.dart';

class MovieDetailsScreen extends StatelessWidget {
  final String movieId;
  const MovieDetailsScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MovieDetailsCubit(context.read())..getMovieDetails(movieId),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: BlocBuilder<MovieDetailsCubit, MovieDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(child: Text('Initial'));
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (movieDetails) {
                return ListView(
                  children: [
                    if (movieDetails.poster?.url == null)
                      const SizedBox(height: 40),
                    if (movieDetails.poster?.url != null)
                      GestureDetector(
                        onTap: () {
                          context.push(
                            AppNavigation.avatarScreen,
                            extra: {
                              'image': movieDetails.poster?.url,
                              'tag': 'avatar',
                            },
                          );
                        },
                        child: Hero(
                          tag: 'avatar',
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    movieDetails.poster?.url ?? ''),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            movieDetails.name ??
                                movieDetails.alternativeName ??
                                '',
                            style: const TextStyle(
                              color: AnarColors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Description',
                            style: TextStyle(
                              color: AnarColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            movieDetails.description ?? '',
                            style: const TextStyle(
                              color: AnarColors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Genres',
                            style: TextStyle(
                              color: AnarColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Wrap(
                            spacing: 10,
                            runSpacing: 10,
                            children: movieDetails.genres!
                                .map(
                                  (genre) => Chip(
                                    deleteIcon: const Icon(Icons.close),
                                    deleteIconColor: AnarColors.white,
                                    label: Text(
                                      genre.name ?? '',
                                      style: const TextStyle(
                                        color: AnarColors.white,
                                      ),
                                    ),
                                    backgroundColor: AnarColors.primary,
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Persons',
                            style: TextStyle(
                              color: AnarColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 100,
                            width: double.infinity,
                            child: ListView.builder(
                              itemCount: movieDetails.persons!.length,
                              scrollDirection: Axis.horizontal,
                              itemExtent: 70,
                              itemBuilder: (context, index) {
                                final person = movieDetails.persons![index];
                                return GestureDetector(
                                  onTap: () {
                                    context.push(
                                      AppNavigation.personScreen,
                                      extra: person.id,
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: person.photo != null
                                            ? NetworkImage(person.photo!)
                                            : null,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        person.name ?? person.enName ?? '',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            color: AnarColors.white,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
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
        floatingActionButton: const AppBackButton(),
      ),
    );
  }
}
