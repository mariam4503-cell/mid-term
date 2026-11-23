import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Wait 3 seconds, then open the onboarding.
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              OnboardingPage(onThemeChanged: widget.onThemeChanged),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset(
  'assets/images/img1.png',
  width: 170,
  height: 170,
  fit: BoxFit.contain,
),
            const SizedBox(height: 16),
            Text(
              context.tr('app_name'),
              style: textTheme.headlineLarge?.copyWith(
                color: colorScheme.onPrimary,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}