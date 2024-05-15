import 'package:flutter/material.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:shimmer/shimmer.dart';

class AnarLoading extends StatelessWidget {
  const AnarLoading({super.key});

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
            baseColor: AnarColors.white,
            highlightColor: AnarColors.greyScale,
            child: const ColoredBox(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
