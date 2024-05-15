import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movie/person/bloc/person_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_loading.dart';
import 'package:mega/ui/widgets/app_back_button.dart';

class PersonScreen extends StatefulWidget {
  final int id;
  const PersonScreen({super.key, required this.id});

  @override
  State<PersonScreen> createState() => _PersonScreenState();
}

class _PersonScreenState extends State<PersonScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PersonCubit(context.read())..getPerson(widget.id),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: BlocBuilder<PersonCubit, PersonState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const AnarLoading(),
              loading: () => const AnarLoading(),
              success: (person) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.push(
                            AppNavigation.avatarScreen,
                            extra: {
                              'image': person.photo,
                              'tag': 'avatar',
                            },
                          );
                        },
                        child: Hero(
                          tag: 'avatar',
                          child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              image: person.photo != null
                                  ? DecorationImage(
                                      image: NetworkImage(person.photo ?? ''),
                                      fit: BoxFit.cover,
                                    )
                                  : null,
                            ),
                          ),
                        ),
                      ),
                      Text(person.name ?? 'Name'),
                      Text(person.id.toString() ?? 'Description'),
                      Text(person.birthday.toString() ?? 'Birthday'),
                      Text(person.sex ?? 'Birthday'),
                      Text(person.age.toString() ?? 'Age'),
                      Column(
                        children: person.facts
                            .map(
                              (fact) => Container(
                                padding: const EdgeInsets.all(8),
                                alignment: Alignment.center,
                                child: Text(
                                  fact.value,
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      SizedBox(
                        height: 120,
                        child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 6,
                              crossAxisSpacing: 10,
                              mainAxisExtent: 140,
                            ),
                            itemCount: person.movies.length,
                            itemBuilder: (context, index) {
                              final movie = person.movies[index];
                              return GestureDetector(
                                onTap: () {
                                  context.push(
                                    AppNavigation.movieDetailsScreen,
                                    extra: movie.id.toString(),
                                  );
                                },
                                child: Hero(
                                  tag: 'movie_${movie.id}',
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AnarColors.white,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      movie.name ??
                                          movie.alternativeName ??
                                          'Title',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                );
              },
              error: () {
                return const Center(child: Text('Error'));
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: const AppBackButton(),
      ),
    );
  }
}
