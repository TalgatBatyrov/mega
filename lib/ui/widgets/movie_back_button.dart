import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class MovieBackButton extends StatelessWidget {
  const MovieBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: MovieColors.backgroundColor,
      ),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: MovieColors.white,
        ),
      ),
    );
  }
}
