import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/features/bottom_tab/bloc/bottom_tab_cubit.dart';
import 'package:mega/features/bottom_tab/widget/bottom_tab_item.dart';
import 'package:mega/features/menu/menu/view/menu_screen.dart';
import 'package:mega/features/movie/view/movie_screen.dart';
import 'package:mega/features/trainings/view/trainings_screen.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class BottomTabWidget extends StatelessWidget {
  const BottomTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomTabCubit(),
      child: BlocBuilder<BottomTabCubit, int>(
        builder: (context, tabNumber) {
          return Scaffold(
            backgroundColor: AnarColors.blackBackground,
            body: [
              const MovieScreen(),
              const MenuScreen(),
              const TrainingsScreen(),
            ].elementAt(tabNumber),
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: AnarColors.blackBackground,
                currentIndex: tabNumber,
                items: [
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/vector/home.svg'),
                    activeIcon: const BottomTabItem(index: 0),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/vector/book.svg'),
                    activeIcon: const BottomTabItem(index: 1),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgPicture.asset('assets/icons/vector/document.svg'),
                    activeIcon: const BottomTabItem(index: 2),
                    label: '',
                  ),
                ],
                onTap: context.read<BottomTabCubit>().changeTab,
              ),
            ),
          );
        },
      ),
    );
  }
}
