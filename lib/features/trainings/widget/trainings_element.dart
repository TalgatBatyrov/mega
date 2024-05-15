import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/trainings/repository/model/trainings_model.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class TrainingsElement extends StatelessWidget {
  const TrainingsElement({
    super.key,
    required this.training,
  });

  final TrainingsModel training;

  @override
  Widget build(BuildContext context) {
    final progress = training.questionCount > 0
        ? ((training.answerCount / training.questionCount) * 100).clamp(0, 100)
        : 0;
    return GestureDetector(
      onTap: () {
        context.push(
          AppNavigation.trainingDetailsScreen,
          extra: training.id.toString(),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AnarColors.quizBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                if (training.image != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return const SizedBox(
                          width: 80,
                          height: 80,
                          child: AnarLoading(),
                        );
                      },
                      training.image!,
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        training.name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: LinearProgressIndicator(
                              value: progress / 100,
                              borderRadius: BorderRadius.circular(10),
                              backgroundColor: AnarColors.greyScale,
                              minHeight: 10,
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                AnarColors.signInBackgroundColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '${training.answerCount}/${training.questionCount}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AnarColors.placeHolder,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
