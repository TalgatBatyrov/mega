import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/trainings/bloc/trainings_cubit.dart';
import 'package:mega/features/trainings/widget/trainings_element.dart';
import 'package:mega/features/trainings/widget/trainings_header_widget.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_error.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class TrainingsScreen extends StatefulWidget {
  const TrainingsScreen({super.key});

  @override
  State<TrainingsScreen> createState() => _TrainingsScreenState();
}

class _TrainingsScreenState extends State<TrainingsScreen> {
  final _searchController = TextEditingController();
  bool isActiveSelected = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingsCubit(context.read()),
      child: Builder(builder: (context) {
        return ColoredBox(
          color: AnarColors.blackBackground,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  TrainingsHeaderWidget(
                    searchController: _searchController,
                    isSearchActive: isActiveSelected,
                  ),
                  ToggleButtons(
                    borderWidth: 0,
                    selectedColor: AnarColors.white,
                    color: AnarColors.white,
                    fillColor: AnarColors.textColor,
                    borderRadius: BorderRadius.circular(10),
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width / 2 - 32,
                      minHeight: 30,
                    ),
                    isSelected: [
                      isActiveSelected,
                      !isActiveSelected,
                    ],
                    onPressed: (index) {
                      if (index == 0) {
                        context
                            .read<TrainingsCubit>()
                            .getActiveQuiz(_searchController.text);
                      } else {
                        context
                            .read<TrainingsCubit>()
                            .getPassedQuiz(_searchController.text);
                      }
                      setState(() {
                        isActiveSelected = index == 0;
                      });
                    },
                    children: const [
                      Text('Active tests'),
                      Text('Passed tests'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  BlocBuilder<TrainingsCubit, TrainingsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const AnarLoading(),
                        loading: () => const AnarLoading(),
                        loaded: (trainings) => Expanded(
                          child: trainings.isNotEmpty
                              ? ListView.builder(
                                  itemBuilder: (context, index) {
                                    final training = trainings[index];
                                    return TrainingsElement(training: training);
                                  },
                                  itemCount: trainings.length,
                                )
                              : const Center(child: Text('No data')),
                        ),
                        error: (message) => AnarError(message: message),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
