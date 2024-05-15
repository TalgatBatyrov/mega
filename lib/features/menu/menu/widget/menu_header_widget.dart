import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/menu/menu/bloc/menu_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MenuHeaderWidget extends StatefulWidget {
  const MenuHeaderWidget({super.key});

  @override
  State<MenuHeaderWidget> createState() => _MenuHeaderWidgetState();
}

class _MenuHeaderWidgetState extends State<MenuHeaderWidget> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final menuCubit = context.read<MenuCubit>();
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: AnarColors.black),
            controller: _searchController,
            onChanged: (value) {
              menuCubit.getCategories(value);
            },
            decoration: const InputDecoration(
              fillColor: AnarColors.white,
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: AnarColors.greyScale,
              ),
              hintText: 'Search',
              border: InputBorder.none,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            context.push(AppNavigation.profileScreen);
          },
          icon: const Icon(
            Icons.menu,
            color: AnarColors.white,
            size: 50,
          ),
        ),
      ],
    );
  }
}
