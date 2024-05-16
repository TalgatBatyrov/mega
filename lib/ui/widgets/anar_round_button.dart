import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/typography/movie_font_weights.dart';

class AnarRoundButton extends StatelessWidget {
  const AnarRoundButton({
    required this.onPressed,
    required this.text,
    required this.textColor,
    super.key,
    this.icon = const SizedBox(),
    this.loading = false,
    this.width,
    this.backgroundColor = MovieColors.primary,
    this.active = true,
    this.border,
    this.height = 56.0,
    this.borderRadius = 30,
    this.fontWeight = MovieFontWeights.bold,
  });

  final VoidCallback onPressed;
  final String text;
  final Color textColor;
  final Widget icon;
  final double? width;
  final bool loading;
  final bool active;
  final Color? backgroundColor;
  final Border? border;
  final double borderRadius;
  final double height;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: active ? onPressed : null,
      child: Container(
        margin: const EdgeInsets.all(3),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        height: height,
        width: width,
        child: loading
            ? SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(textColor),
                ))
            : Row(
                children: [
                  icon,
                  if (icon is SizedBox)
                    const SizedBox()
                  else
                    const SizedBox(width: 5),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: fontWeight,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
