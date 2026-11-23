import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 90, color: colorScheme.onPrimaryContainer),
      ),
    );
  }
}