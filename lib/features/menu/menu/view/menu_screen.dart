import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/menu/menu/bloc/menu_cubit.dart';
import 'package:mega/features/menu/menu/widget/menu_element_list.dart';
import 'package:mega/features/menu/menu/widget/menu_header_widget.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MenuCubit(context.read()),
      child: const ColoredBox(
        color: AnarColors.blackBackground,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                MenuHeaderWidget(),
                SizedBox(height: 10),
                Text(
                  'CATEGORIES',
                  style: TextStyle(
                    color: AnarColors.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                MenuElementList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
