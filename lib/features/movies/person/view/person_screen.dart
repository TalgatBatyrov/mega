import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/movies/person/bloc/person_cubit.dart';
import 'package:mega/features/movies/person/widget/person_facts.dart';
import 'package:mega/features/movies/person/widget/person_movies.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/chip_widget.dart';
import 'package:mega/ui/widgets/movie_back_button.dart';
import 'package:mega/ui/widgets/movie_details_loading.dart';
import 'package:mega/ui/widgets/movie_error.dart';
import 'package:mega/ui/widgets/photo_widget.dart';
import 'package:mega/ui/widgets/title_widget.dart';

class PersonScreen extends StatelessWidget {
  final int id;
  const PersonScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonCubit(context.read())..getPerson(id),
      child: Scaffold(
        backgroundColor: MovieColors.blackBackground,
        body: SafeArea(
          child: BlocBuilder<PersonCubit, PersonState>(
            builder: (context, state) {
              return state.when(
                loading: () => const MovieDetailsLoading(),
                success: (person) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PhotoWidget(photo: person.photo),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TittleWidget(title: person.name),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  ChipWidget(value: person.sex),
                                  const SizedBox(width: 10),
                                  ChipWidget(
                                      value:
                                          '${person.age ?? 'Возраст не указан'}'),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const TittleWidget(title: 'Фильмы'),
                              const SizedBox(height: 10),
                              PersonMovies(person: person),
                              const SizedBox(height: 10),
                              PersonFacts(person: person),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                error: (e) => MovieError(message: e),
              );
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: const MovieBackButton(),
      ),
    );
  }
}
