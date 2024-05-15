import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/menu/food_details/cubit/food_details_cubit.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/widgets/anar_loading.dart';
import 'package:mega/ui/widgets/app_back_button.dart';

class FoodDetailsScreen extends StatelessWidget {
  final String foodId;
  const FoodDetailsScreen({super.key, required this.foodId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          FoodDetailsCubit(context.read())..getFoodDetails(foodId),
      child: Scaffold(
        backgroundColor: AnarColors.blackBackground,
        body: BlocBuilder<FoodDetailsCubit, FoodDetailsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Text('Initial');
              },
              loading: () => const AnarLoading(),
              success: (foodDetails) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (foodDetails.image == null) {
                                return;
                              }

                              context.push(
                                AppNavigation.avatarScreen,
                                extra: {
                                  'image': foodDetails.image,
                                  'tag': 'avatar',
                                },
                              );
                            },
                            child: Hero(
                              tag: 'avatar',
                              child: Container(
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                decoration: BoxDecoration(
                                  image: foodDetails.image != null
                                      ? DecorationImage(
                                          image:
                                              NetworkImage(foodDetails.image!),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  foodDetails.name,
                                  style: const TextStyle(
                                    color: AnarColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                // Html(data: foodDetails.content),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        floatingActionButton: const AppBackButton(),
      ),
    );
  }
}
