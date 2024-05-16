import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movies/movie_details/repository/model/movie_details_model.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/title_widget.dart';

class MovieActors extends StatelessWidget {
  final MovieDetailsModel movieDetails;
  const MovieActors({super.key, required this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (movieDetails.persons!.isNotEmpty)
          const TittleWidget(title: 'Актеры'),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            itemCount: movieDetails.persons!.length,
            scrollDirection: Axis.horizontal,
            itemExtent: 100,
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
                        color: MovieColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
