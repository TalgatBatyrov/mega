import 'package:flutter/widgets.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class AnarError extends StatelessWidget {
  final String message;
  const AnarError({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        style: const TextStyle(
          color: AnarColors.white,
        ),
      ),
    );
  }
}
