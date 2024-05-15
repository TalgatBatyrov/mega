import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/bottom_tab/view/bottom_tab_widget.dart';
import 'package:mega/features/menu/food/view/food_screen.dart';
import 'package:mega/features/menu/food_details/view/food_details_screen.dart';
import 'package:mega/features/movie/movie_details/view/movie_details_screen.dart';
import 'package:mega/features/movie/movie_details/widget/avatar_screen.dart';
import 'package:mega/features/movie/person/view/person_screen.dart';
import 'package:mega/features/trainings/training_details/view/training_details_screen.dart';
import 'package:mega/features/trainings/training_passing/view/training_passing_screen.dart';

class AppRoutes {
  static GoRouter appRouter() {
    return GoRouter(
      initialLocation: AppNavigation.root,
      routes: [
        GoRoute(
          path: AppNavigation.root,
          builder: (context, state) => const BottomTabWidget(),
        ),
        GoRoute(
          path: AppNavigation.foods,
          builder: (BuildContext context, GoRouterState state) {
            final categoryId = state.extra as String;
            return FoodScreen(categoryId: categoryId);
          },
        ),
        GoRoute(
          path: AppNavigation.foodDetailsScreen,
          builder: (BuildContext context, GoRouterState state) {
            final foodId = state.extra as String;
            return FoodDetailsScreen(foodId: foodId);
          },
        ),
        GoRoute(
          path: AppNavigation.movieDetailsScreen,
          builder: (BuildContext context, GoRouterState state) {
            final homeId = state.extra as String;
            return MovieDetailsScreen(movieId: homeId);
          },
        ),
        GoRoute(
          path: AppNavigation.trainingDetailsScreen,
          builder: (BuildContext context, GoRouterState state) {
            final quizId = state.extra as String;
            return TrainingDetailsScreen(trainingId: quizId);
          },
        ),
        GoRoute(
          path: AppNavigation.avatarScreen,
          builder: (BuildContext context, GoRouterState state) {
            final data = state.extra as Map<String, dynamic>;
            final image = data['image'] as String?;
            final tag = data['tag'] as String;
            return AvatarScreen(image: image, tag: tag);
          },
        ),
        GoRoute(
          path: AppNavigation.trainingPassingScreen,
          builder: (BuildContext context, GoRouterState state) {
            final quizId = state.extra as int;
            return TrainingPassingScreen(trainingId: quizId);
          },
        ),
        GoRoute(
          path: AppNavigation.personScreen,
          builder: (BuildContext context, GoRouterState state) {
            final personId = state.extra as int;
            return PersonScreen(id: personId);
          },
        ),
      ],
    );
  }
}
