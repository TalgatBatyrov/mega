import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/trainings/training_passing/cubit/training_passing_cubit.dart';
import 'package:mega/features/trainings/training_passing/repository/training_passing_repository.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_buttons/anar_round_button.dart';
import 'package:mega/ui/widgets/anar_error.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class TrainingPassingScreen extends StatefulWidget {
  final int trainingId;
  const TrainingPassingScreen({super.key, required this.trainingId});

  @override
  State<TrainingPassingScreen> createState() => _TrainingPassingScreenState();
}

class _TrainingPassingScreenState extends State<TrainingPassingScreen> {
  int selectedOption = 0;
  final _pageController = PageController();
  final _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrainingPassingCubit(
        context.read<TrainningPassingRepository>(),
      )..getQuizQuestions(quizId: widget.trainingId),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: BlocConsumer<TrainingPassingCubit, TrainingPassingState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              completeAnswer: (status) {
                //show dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Quiz completed'),
                      content: Text(
                        'Your result: $status',
                        style: const TextStyle(
                          color: AnarColors.textColor,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.pop();
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    );
                  },
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Text('Initial');
              },
              loading: () => const AnarLoading(),
              success: (trainings) {
                return PageView.builder(
                  controller: _pageController,
                  itemCount: trainings.length,
                  itemBuilder: (context, index) {
                    final training = trainings[index];
                    return SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                'Question ${index + 1}/${trainings.length}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AnarColors.white,
                                ),
                              ),
                              Text(
                                training.name,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 35),
                              if (training.image != null)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.network(
                                    width: double.infinity,
                                    height: 140,
                                    training.image ?? '',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              const SizedBox(height: 35),
                              Text(
                                textAlign: TextAlign.center,
                                training.description,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.center,
                                training.type,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 35),
                              if (training.type == 'text')
                                TextFormField(
                                  minLines: 5,
                                  maxLines: 5,
                                  style: const TextStyle(
                                    color: AnarColors.textColor,
                                  ),
                                  controller: _answerController,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 15,
                                    ),
                                    hintText: 'Enter your answer',
                                    hintStyle: TextStyle(
                                      color: AnarColors.black.withOpacity(0.5),
                                    ),
                                    filled: true,
                                    fillColor: AnarColors.textFieldBackground,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              const SizedBox(height: 20),
                              if (training.type != 'text')
                                Column(
                                  children: training.answers.map((option) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectedOption = option.id;
                                        });
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(
                                          left: 30,
                                          right: 20,
                                          top: 15,
                                          bottom: 15,
                                        ),
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                          color: selectedOption == option.id
                                              ? AnarColors.signInBackgroundColor
                                              : AnarColors.textFieldBackground,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              option.name,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: selectedOption !=
                                                        option.id
                                                    ? AnarColors
                                                        .signInBackgroundColor
                                                    : AnarColors
                                                        .textFieldBackground,
                                              ),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              selectedOption == option.id
                                                  ? Icons.check_circle
                                                  : Icons
                                                      .radio_button_off_sharp,
                                              color: selectedOption == option.id
                                                  ? AnarColors.white
                                                  : AnarColors.black
                                                      .withOpacity(0.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              AnarRoundButton(
                                borderRadius: 10,
                                onPressed: () {
                                  context
                                      .read<TrainingPassingCubit>()
                                      .setQuizAnswer(
                                        questionId: training.id,
                                        answerId: selectedOption,
                                        textAnswer: _answerController.text,
                                        type: training.type == 'text'
                                            ? QuizType.text
                                            : QuizType.option,
                                      );

                                  if (index == trainings.length - 1) {
                                    context.push(AppNavigation.root);
                                    return;
                                  }

                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                text: 'Next question',
                                textColor: AnarColors.white,
                                backgroundColor: AnarColors.textColor,
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              error: (message) => AnarError(message: message),
            );
          },
        ),
        resizeToAvoidBottomInset: true,
      ),
    );
  }
}
