import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AnarColors.signInBackgroundColor,
      ),
      child: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AnarColors.white,
        ),
      ),
    );
  }
}
