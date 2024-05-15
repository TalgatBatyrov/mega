import 'package:flutter/material.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/typography/anar_font_weights.dart';
import 'package:mega/ui/typography/anar_text_style.dart';

extension CustomSnackBarExtension on BuildContext {
  void showCustomSnackBar({
    required Widget icon,
    required String title,
    required String message,
    Color backgroundColor = AnarColors.error,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const SizedBox(width: 15),
            icon,
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AnarTextStyle.bodyL.copyWith(
                      fontWeight: AnarFontWeights.bold,
                    ),
                  ),
                  Text(message, style: AnarTextStyle.bodyM.copyWith()),
                ],
              ),
            ),
          ],
        ),
        duration: const Duration(seconds: 2),
        backgroundColor: backgroundColor,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: AnarColors.error60),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
