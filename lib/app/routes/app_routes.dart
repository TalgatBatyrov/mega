import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/bottom_tab/view/bottom_tab_widget.dart';
import 'package:mega/features/movies/movie_details/view/movie_details_screen.dart';
import 'package:mega/features/movies/person/view/person_screen.dart';
import 'package:mega/ui/widgets/avatar_screen.dart';

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
          path: AppNavigation.movieDetailsScreen,
          builder: (BuildContext context, GoRouterState state) {
            final homeId = state.extra as String;
            return MovieDetailsScreen(movieId: homeId);
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
