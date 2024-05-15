import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/app/routes/app_routes.dart';
import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/menu/food/repository/food_repository.dart';
import 'package:mega/features/menu/food_details/repository/food_details_repository.dart';
import 'package:mega/features/menu/menu/repository/menu_repository.dart';
import 'package:mega/features/movie/movie_details/repository/movie_details_repository.dart';
import 'package:mega/features/movie/person/repository/person_reposotory.dart';
import 'package:mega/features/movie/repository/movie_repository.dart';
import 'package:mega/features/trainings/repository/trainings_repository.dart';
import 'package:mega/features/trainings/training_details/repository/training_details_repository.dart';
import 'package:mega/features/trainings/training_passing/repository/training_passing_repository.dart';
import 'package:mega/ui/themes/light_theme.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _apiClient = ApiClient();
  final _goRouter = AppRoutes.appRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => MovieRepository(_apiClient)),
        RepositoryProvider(create: (_) => MenuRepository(_apiClient)),
        RepositoryProvider(create: (_) => FoodRepository(_apiClient)),
        RepositoryProvider(create: (_) => FoodDetailsRepository(_apiClient)),
        RepositoryProvider(create: (_) => MovieDetailsRepository(_apiClient)),
        RepositoryProvider(create: (_) => TrainningsRepository(_apiClient)),
        RepositoryProvider(
            create: (_) => TrainningDetailsRepository(_apiClient)),
        RepositoryProvider(
            create: (_) => TrainningPassingRepository(_apiClient)),
        RepositoryProvider(create: (_) => PersonRepository(_apiClient)),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationProvider: _goRouter.routeInformationProvider,
        routeInformationParser: _goRouter.routeInformationParser,
        routerDelegate: _goRouter.routerDelegate,
        title: 'Clap Academy',
        theme: AnarLightTheme.theme,
      ),
    );
  }
}
