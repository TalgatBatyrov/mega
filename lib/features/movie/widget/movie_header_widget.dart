import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movie/bloc/movie_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MovieHeaderWidget extends StatefulWidget {
  const MovieHeaderWidget({super.key});

  @override
  State<MovieHeaderWidget> createState() => _MovieHeaderWidgetState();
}

class _MovieHeaderWidgetState extends State<MovieHeaderWidget> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final homeCubit = context.read<MovieCubit>();
    return TextField(
      style: const TextStyle(color: AnarColors.black),
      controller: _searchController,
      onChanged: (value) {
        homeCubit.searchMovies(value);
      },
      decoration: const InputDecoration(
        fillColor: AnarColors.white,
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: AnarColors.greyScale,
        ),
        hintText: 'Search',
        border: InputBorder.none,
      ),
    );
  }
}
