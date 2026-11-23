import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


import 'login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  void _goToLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(onThemeChanged: onThemeChanged),
      ),
    );
  }

  PageViewModel _buildPage(BuildContext context, String key, String images) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return PageViewModel(
      title: context.tr('$key.title'),
      body: context.tr('$key.body'),
    image: Image.asset(images, width: 250, height: 250),
      decoration: PageDecoration(
        pageColor: colorScheme.surface,
        titleTextStyle: textTheme.headlineMedium!.copyWith(
          fontWeight: FontWeight.bold,
          color: colorScheme.onSurface,
        ),
        bodyTextStyle: textTheme.bodyLarge!.copyWith(
          color: colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IntroductionScreen(
      globalBackgroundColor: colorScheme.surface,
      pages: [
      
  _buildPage(context, 'onboarding.p1', 'assets/images/img1.png'),
  _buildPage(context, 'onboarding.p2', 'assets/images/img2.png'),
  _buildPage(context, 'onboarding.p3', 'assets/images/img3.png'),
],
      showSkipButton: true,
      skip: Text(context.tr('onboarding.skip')),
      next: Text(context.tr('onboarding.next')),
      done: Text(context.tr('onboarding.done')),
      onSkip: () => _goToLogin(context),
      onDone: () => _goToLogin(context),
      dotsDecorator: DotsDecorator(activeColor: colorScheme.primary),
    );
  }
}