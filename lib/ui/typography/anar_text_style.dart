import 'package:flutter/material.dart';
import 'package:mega/ui/colors/anar_colors.dart';

/// Gruzo TextStyle
class AnarTextStyle {
  AnarTextStyle._();

  /// base style
  static const TextStyle _baseStyle = TextStyle(
    fontFamily: 'Inter',
    height: 1.5,
    letterSpacing: 0.25,
    color: AnarColors.white,
  );

  /// Head1
  static TextStyle get head1 => _baseStyle.copyWith(fontSize: 24);

  /// Head2
  static TextStyle get head2 => _baseStyle.copyWith(fontSize: 20);

  /// Head3
  static TextStyle get head3 => _baseStyle.copyWith(fontSize: 18);

  /// BodyXL
  static TextStyle get bodyXL => _baseStyle.copyWith(fontSize: 18);

  /// BodyL
  static TextStyle get bodyL => _baseStyle.copyWith(fontSize: 16);

  /// BodyM
  static TextStyle get bodyM => _baseStyle.copyWith(fontSize: 14);

  /// BodyS
  static TextStyle get bodyS => _baseStyle.copyWith(fontSize: 12);

  /// BodyXS
  static TextStyle get bodyXS => _baseStyle.copyWith(fontSize: 10);
}
