import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movies/movie/bloc/movie_cubit.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class MovieHeaderWidget extends StatefulWidget {
  const MovieHeaderWidget({super.key});

  @override
  State<MovieHeaderWidget> createState() => _MovieHeaderWidgetState();
}

class _MovieHeaderWidgetState extends State<MovieHeaderWidget> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: MovieColors.black),
      controller: _searchController,
      onEditingComplete: () {
        context.read<MovieCubit>().searchMovies(
              query: _searchController.text,
              page: 1,
            );
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        fillColor: MovieColors.white,
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          color: MovieColors.greyScale,
        ),
        hintText: 'Поиск фильмов',
        border: InputBorder.none,
        suffixIcon: _searchController.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _searchController.clear();
                  context.read<MovieCubit>().getMovies(
                        query: '',
                        page: 1,
                      );
                  FocusScope.of(context).unfocus();
                },
              )
            : null,
      ),
    );
  }
}
