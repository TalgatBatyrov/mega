import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/menu/food/cubit/food_cubit.dart';
import 'package:mega/features/menu/food/widget/food_element_list.dart';
import 'package:mega/features/menu/food/widget/food_header_widget.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class FoodScreen extends StatelessWidget {
  final String categoryId;
  const FoodScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FoodCubit(context.read())..getFoods(category: categoryId),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                FoodHeaderWidget(categoryId: categoryId),
                const FoodElementList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
