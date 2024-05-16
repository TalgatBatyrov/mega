import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:mega/features/movies/movie/bloc/movie_cubit.dart';
import 'package:mega/features/movies/movie/repository/model/movie_model.dart';
import 'package:mega/features/movies/movie/repository/movie_repository.dart';
import 'package:mega/features/movies/movie/widget/movie_element.dart';
import 'package:mega/features/movies/movie/widget/movie_header_widget.dart';
import 'package:mega/ui/widgets/movie_loading.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({super.key});

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  static const _pageSize = 10;

  final PagingController<int, MovieModel> _pagingController =
      PagingController(firstPageKey: 1);

  final _searchController = TextEditingController();

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey, _searchController.text);
    });
    super.initState();
  }

  // Пагинация
  Future<void> _fetchPage(int pageKey, String query) async {
    final movieRepository = context.read<MovieRepository>();
    try {
      // Получаем данные из репозитория
      final newItems = await movieRepository.getMovies(
        page: pageKey,
        query: query,
      );
      final isLastPage = newItems.length < _pageSize;

      // Если это последняя страница, то добавляем данные в конец списка
      if (isLastPage) {
        _pagingController.appendLastPage(newItems);
      } else {
        // Иначе добавляем данные в конец списка и устанавливаем ключ следующей страницы
        final nextPageKey = pageKey + newItems.length;
        _pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieCubit, MovieState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (movies) {
            // При успешном получении данных обновляем список из кубита
            _pagingController.itemList = movies;
          },
        );
      },
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const MovieHeaderWidget(),
              const SizedBox(height: 20),
              Expanded(
                child: BlocBuilder<MovieCubit, MovieState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const MovieLoading(),
                      loading: () => const MovieLoading(),
                      success: (_) {
                        return PagedGridView<int, MovieModel>(
                          pagingController: _pagingController,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 6,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 280,
                          ),
                          builderDelegate:
                              PagedChildBuilderDelegate<MovieModel>(
                            itemBuilder: (context, item, index) =>
                                MovieElement(movie: item),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
