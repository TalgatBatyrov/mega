part of 'menu_cubit.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.initial() = _Initial;
  const factory MenuState.loading() = _Loading;
  const factory MenuState.success({required List<MenuModel> menuData}) =
      _Success;
  const factory MenuState.error(String message) = _Error;
}
