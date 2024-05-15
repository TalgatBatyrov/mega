import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega/features/menu/food/cubit/food_cubit.dart';
import 'package:mega/features/menu/food/widget/food_element.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_loading.dart';

class FoodElementList extends StatelessWidget {
  const FoodElementList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Text('Initial');
            },
            loading: () => const AnarLoading(),
            success: (homeData) {
              return homeData.isNotEmpty
                  ? Column(
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: AnarColors.textColor,
                              ),
                            ),
                            Text(
                              homeData.first.category,
                              style: const TextStyle(
                                color: AnarColors.textColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 180,
                            ),
                            itemCount: homeData.length,
                            itemBuilder: (context, index) {
                              final foodElement = homeData[index];
                              return FoodElement(foodElement: foodElement);
                            },
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: AnarColors.textColor,
                              ),
                            ),
                          ],
                        ),
                        const Text('No data found'),
                      ],
                    );
            },
          );
        },
      ),
    );
  }
}
