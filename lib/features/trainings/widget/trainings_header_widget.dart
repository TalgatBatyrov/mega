import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/trainings/bloc/trainings_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class TrainingsHeaderWidget extends StatefulWidget {
  final TextEditingController searchController;
  final bool isSearchActive;
  const TrainingsHeaderWidget({
    super.key,
    required this.isSearchActive,
    required this.searchController,
  });

  @override
  State<TrainingsHeaderWidget> createState() => _MenuHeaderWidgetState();
}

class _MenuHeaderWidgetState extends State<TrainingsHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final menuCubit = context.read<TrainingsCubit>();
    return Row(
      children: [
        const SizedBox(width: 14),
        Expanded(
          child: TextField(
            style: const TextStyle(color: AnarColors.black),
            controller: widget.searchController,
            onChanged: (value) {
              widget.isSearchActive
                  ? menuCubit.getActiveQuiz(value)
                  : menuCubit.getPassedQuiz(value);
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
