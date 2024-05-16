import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class TittleWidget extends StatelessWidget {
  final String? title;
  const TittleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: const TextStyle(
        color: MovieColors.textColor,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
