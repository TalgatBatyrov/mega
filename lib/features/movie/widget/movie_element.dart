import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movie/repository/model/movie_model.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MovieElement extends StatelessWidget {
  const MovieElement({
    super.key,
    required this.movie,
  });

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppNavigation.movieDetailsScreen,
          extra: movie.id.toString(),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AnarColors.greyScale,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                movie.poster?.url ??
                    'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
              ),
            )),
      ),
    );
  }
}
