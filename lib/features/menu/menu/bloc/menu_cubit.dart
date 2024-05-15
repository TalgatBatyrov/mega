import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega/core/services/http_service/exceptions/server_exception.dart';
import 'package:mega/features/menu/menu/repository/menu_repository.dart';
import 'package:mega/features/menu/menu/repository/model/menu_model.dart';

part 'menu_cubit.freezed.dart';
part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  final MenuRepository repository;
  MenuCubit(this.repository) : super(const MenuState.initial()) {
    getCategories();
  }

  Future<void> getCategories([String query = '']) async {
    emit(const MenuState.loading());
    try {
      final menuData = await repository.getCategories(query);
      emit(MenuState.success(menuData: menuData));
    } on ServerException catch (e) {
      emit(MenuState.error(e.message ?? 'Server error'));
    }
  }
}
