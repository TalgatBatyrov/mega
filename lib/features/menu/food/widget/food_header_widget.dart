import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/menu/food/cubit/food_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class FoodHeaderWidget extends StatefulWidget {
  final String categoryId;
  const FoodHeaderWidget({
    super.key,
    required this.categoryId,
  });

  @override
  State<FoodHeaderWidget> createState() => _FoodHeaderWidgetState();
}

class _FoodHeaderWidgetState extends State<FoodHeaderWidget> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final foodCubit = context.read<FoodCubit>();
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(color: AnarColors.black),
            controller: _searchController,
            onChanged: (value) {
              foodCubit.getFoods(
                query: value,
                category: widget.categoryId,
              );
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
          onPressed: () {},
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
