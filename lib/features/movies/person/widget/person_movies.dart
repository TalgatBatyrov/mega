import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movies/person/repository/model/person_model.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class PersonMovies extends StatelessWidget {
  final PersonModel person;
  const PersonMovies({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6,
            crossAxisSpacing: 10,
            mainAxisExtent: 140,
          ),
          itemCount: person.movies.length,
          itemBuilder: (context, index) {
            final movie = person.movies[index];
            return GestureDetector(
              onTap: () {
                context.push(
                  AppNavigation.movieDetailsScreen,
                  extra: movie.id.toString(),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: MovieColors.textColor,
                  border: Border.all(
                    color: MovieColors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  movie.name ?? movie.alternativeName ?? '',
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }),
    );
  }
}
