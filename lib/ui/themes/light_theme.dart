import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/typography/movie_text_style.dart';

abstract class MovieLightTheme {
  static ThemeData get theme => ThemeData(
        dividerTheme: DividerThemeData(
          color: MovieColors.divider.withOpacity(0.3),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: MovieColors.neutral,
            unselectedItemColor: MovieColors.neutral,
            selectedLabelStyle: MovieTextStyle.bodyS,
            type: BottomNavigationBarType.fixed),
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: MovieColors.blackBackground,
          actionsIconTheme: IconThemeData(color: MovieColors.white),
        ),
        outlinedButtonTheme: const OutlinedButtonThemeData(),
        textButtonTheme: const TextButtonThemeData(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: WidgetStateProperty.all(MovieTextStyle.bodyM),
          ),
        ),
        textTheme: TextTheme(
          displayLarge: MovieTextStyle.head1,
          displayMedium: MovieTextStyle.head2,
          displaySmall: MovieTextStyle.head3,
          titleMedium: MovieTextStyle.bodyXL,
          bodyLarge: MovieTextStyle.bodyL,
          bodyMedium: MovieTextStyle.bodyM,
          bodySmall: MovieTextStyle.bodyS,
          labelSmall: MovieTextStyle.bodyXS,
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(
            fontSize: 16,
            color: MovieColors.neutral50,
          ),
          contentPadding: const EdgeInsets.only(left: 16),
          fillColor: MovieColors.textFieldBackground,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: MovieColors.primary)),
          errorStyle: const TextStyle(
            color: MovieColors.error,
            fontSize: 12,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: MovieColors.neutral),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: MovieColors.error,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: MovieColors.neutral25,
            ),
          ),
        ),
      );
}
