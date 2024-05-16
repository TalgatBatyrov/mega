import 'package:flutter/widgets.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class MovieError extends StatelessWidget {
  final String message;
  const MovieError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(
          color: MovieColors.white,
        ),
      ),
    );
  }
}
