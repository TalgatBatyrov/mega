import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/app/routes/app_routes.dart';
import 'package:mega/core/services/http_service/api_client.dart';
import 'package:mega/features/movies/movie/bloc/movie_cubit.dart';
import 'package:mega/features/movies/movie/repository/movie_repository.dart';
import 'package:mega/features/movies/movie_details/repository/movie_details_repository.dart';
import 'package:mega/features/movies/person/repository/person_reposotory.dart';
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
        RepositoryProvider(create: (_) => MovieDetailsRepository(_apiClient)),
        RepositoryProvider(create: (_) => PersonRepository(_apiClient)),
      ],
      child: BlocProvider(
        create: (context) => MovieCubit(context.read()),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationProvider: _goRouter.routeInformationProvider,
          routeInformationParser: _goRouter.routeInformationParser,
          routerDelegate: _goRouter.routerDelegate,
          title: 'Mega',
          theme: MovieLightTheme.theme,
        ),
      ),
    );
  }
}
