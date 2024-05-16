import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movies/movie/repository/model/movie_model.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/network_image_widget.dart';

class MovieElement extends StatelessWidget {
  final MovieModel movie;

  const MovieElement({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppNavigation.movieDetailsScreen,
          extra: movie.id.toString(),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: double.infinity,
              height: 220,
              child: NetworkImageWidget(
                url: movie.poster?.url ?? movie.backdrop?.url,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Text(
              movie.name ?? movie.alternativeName ?? movie.enName ?? '',
              style: const TextStyle(
                color: MovieColors.textColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
