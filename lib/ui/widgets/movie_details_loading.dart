import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:shimmer/shimmer.dart';

class MovieDetailsLoading extends StatelessWidget {
  const MovieDetailsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 6,
        crossAxisSpacing: 10,
      ),
      itemCount: 8,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: MovieColors.white,
              highlightColor: MovieColors.greyScale,
              child: SizedBox(
                width: 200.0,
                height: 100.0,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
