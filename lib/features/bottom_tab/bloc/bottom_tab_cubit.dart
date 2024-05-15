import 'package:flutter_bloc/flutter_bloc.dart';

class BottomTabCubit extends Cubit<int> {
  BottomTabCubit() : super(0);

  void changeTab(int index) {
    emit(index);
  }
}
