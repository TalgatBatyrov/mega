import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/menu/menu/bloc/menu_cubit.dart';
import 'package:mega/features/menu/menu/widget/menu_element.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class MenuElementList extends StatelessWidget {
  const MenuElementList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<MenuCubit, MenuState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Text('Initial');
            },
            loading: () => const AnarLoading(),
            success: (menuData) {
              return menuData.isNotEmpty
                  ? ListView.builder(
                      itemCount: menuData.length,
                      itemBuilder: (context, index) {
                        final menuElement = menuData[index];
                        return MenuElement(menuElement: menuElement);
                      },
                    )
                  : const Center(
                      child: Text('No data found'),
                    );
            },
          );
        },
      ),
    );
  }
}
