import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/menu/food/repository/model/food_model.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/typography/anar_text_style.dart';

class FoodElement extends StatelessWidget {
  const FoodElement({
    super.key,
    required this.foodElement,
  });

  final FoodModel foodElement;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
          AppNavigation.foodDetailsScreen,
          extra: foodElement.id.toString(),
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: AnarColors.greyScale,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  foodElement.image!,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: FittedBox(
                child: Text(
                  foodElement.name,
                  style: AnarTextStyle.bodyM.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
