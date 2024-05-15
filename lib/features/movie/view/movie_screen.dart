import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movie/bloc/movie_cubit.dart';
import 'package:mega/features/movie/widget/movie_header_widget.dart';
import 'package:mega/features/movie/widget/movie_list.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MovieCubit(context.read()),
      child: const ColoredBox(
        color: AnarColors.blackBackground,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                MovieHeaderWidget(),
                SizedBox(height: 20),
                MovieList(),
                SizedBox(height: 20),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
