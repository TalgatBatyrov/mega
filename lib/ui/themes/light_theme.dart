import 'package:flutter/material.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:mega/ui/typography/anar_text_style.dart';

abstract class AnarLightTheme {
  static ThemeData get theme => ThemeData(
        dividerTheme: DividerThemeData(
          color: AnarColors.divider.withOpacity(0.3),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: AnarColors.neutral,
            unselectedItemColor: AnarColors.neutral,
            selectedLabelStyle: AnarTextStyle.bodyS,
            type: BottomNavigationBarType.fixed),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: AnarColors.blackBackground,
          actionsIconTheme: IconThemeData(color: AnarColors.white),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(),
        textButtonTheme: const TextButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all(AnarTextStyle.bodyM),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: AnarTextStyle.head1,
          displayMedium: AnarTextStyle.head2,
          displaySmall: AnarTextStyle.head3,
          titleMedium: AnarTextStyle.bodyXL,
          bodyLarge: AnarTextStyle.bodyL,
          bodyMedium: AnarTextStyle.bodyM,
          bodySmall: AnarTextStyle.bodyS,
          labelSmall: AnarTextStyle.bodyXS,
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
            fontSize: 16,
            color: AnarColors.neutral50,
          ),
          contentPadding: const EdgeInsets.only(left: 16),
          fillColor: AnarColors.textFieldBackground,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: AnarColors.primary)),
          errorStyle: const TextStyle(
            color: AnarColors.error,
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AnarColors.neutral),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AnarColors.error,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: AnarColors.neutral25,
            ),
          ),
        ),
      );
}
