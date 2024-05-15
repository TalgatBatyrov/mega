import 'package:flutter/material.dart';

class AnarLoading extends StatelessWidget {
  const AnarLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
