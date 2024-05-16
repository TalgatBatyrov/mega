import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class ChipWidget extends StatelessWidget {
  final String? value;
  const ChipWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        value ?? '',
        style: const TextStyle(
          color: MovieColors.white,
        ),
      ),
      backgroundColor: MovieColors.textColor,
    );
  }
}
