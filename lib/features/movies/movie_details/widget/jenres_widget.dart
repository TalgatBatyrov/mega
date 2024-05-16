import 'package:flutter/material.dart';
import 'package:mega/features/movies/movie_details/repository/model/movie_details_model.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/title_widget.dart';

class JenresWidget extends StatelessWidget {
  final MovieDetailsModel movieDetails;
  const JenresWidget({super.key, required this.movieDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (movieDetails.genres!.isNotEmpty) const TittleWidget(title: 'Жанры'),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: movieDetails.genres!
              .map(
                (genre) => Chip(
                  label: Text(
                    genre.name ?? '',
                    style: const TextStyle(
                      color: MovieColors.white,
                    ),
                  ),
                  backgroundColor: MovieColors.textColor,
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
