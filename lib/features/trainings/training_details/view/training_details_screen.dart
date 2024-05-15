import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/trainings/training_details/bloc/training_details_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_buttons/anar_round_button.dart';
import 'package:mega/ui/widgets/anar_error.dart';
import 'package:mega/ui/widgets/anar_loading.dart';
import 'package:mega/ui/widgets/app_back_button.dart';

class TrainingDetailsScreen extends StatelessWidget {
  final String trainingId;
  const TrainingDetailsScreen({super.key, required this.trainingId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TrainingDetailsCubit(context.read())
        ..getTrainingDetails(id: trainingId),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: BlocConsumer<TrainingDetailsCubit, TrainingDetailsState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              reseted: () {
                // final trainingCubit = context.read<TrainingsCubit>();

                // trainingCubit.getActiveQuiz('');
                // trainingCubit.getPassedQuiz('');

                context.pop();
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Text('Initial');
              },
              loading: () => const AnarLoading(),
              success: (trainingDetails) {
                return ListView(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (trainingDetails.image == null) {
                          return;
                        }

                        context.push(
                          AppNavigation.avatarScreen,
                          extra: {
                            'image': trainingDetails.image,
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
                            image: trainingDetails.image != null
                                ? DecorationImage(
                                    image: NetworkImage(trainingDetails.image!),
                                    fit: BoxFit.cover,
                                  )
                                : null,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            trainingDetails.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          // Html(data: trainingDetails.content),
                          Text(
                            trainingDetails.sprint?.status ?? ':)',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          (trainingDetails.sprint?.status == null ||
                                  trainingDetails.sprint?.status ==
                                      'while_taking')
                              ? AnarRoundButton(
                                  borderRadius: 10,
                                  onPressed: () {
                                    context.push(
                                      AppNavigation.trainingPassingScreen,
                                      extra: trainingDetails.id,
                                    );
                                  },
                                  text: 'Take a test',
                                  textColor: AnarColors.white,
                                  backgroundColor: AnarColors.textColor,
                                )
                              : AnarRoundButton(
                                  borderRadius: 10,
                                  onPressed: () {
                                    context
                                        .read<TrainingDetailsCubit>()
                                        .resetTraining(id: trainingDetails.id);
                                  },
                                  text: 'Retry',
                                  textColor: AnarColors.white,
                                  backgroundColor: AnarColors.textColor,
                                )
                        ],
                      ),
                    ),
                  ],
                );
              },
              error: (message) => AnarError(message: message),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: const AppBackButton(),
      ),
    );
  }
}
