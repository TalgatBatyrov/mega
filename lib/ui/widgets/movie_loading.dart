import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:shimmer/shimmer.dart';

class MovieLoading extends StatelessWidget {
  const MovieLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 10,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Shimmer.fromColors(
            baseColor: MovieColors.white,
            highlightColor: MovieColors.greyScale,
            child: const ColoredBox(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
