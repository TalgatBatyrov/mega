import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/movie/person/bloc/person_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';
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
              orElse: () {
                return const Center(child: Text('Initial'));
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              success: (person) {
                return Column(
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
                            image: DecorationImage(
                              image: NetworkImage(person.photo ?? ''),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(person.name ?? 'Name'),
                    Text(person.id.toString() ?? 'Description'),
                    Text(person.birthday.toString() ?? 'Birthday'),
                  ],
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
