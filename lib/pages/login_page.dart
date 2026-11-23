import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import '../widgets/language_button.dart';
import 'home_page.dart';
import 'signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Align(
                alignment: AlignmentDirectional.centerEnd,
                child: LanguageButton(),
              ),
              const SizedBox(height: 16),
              Image.asset(
  'assets/images/img1.png',
  width: 120,
  height: 120,
  fit: BoxFit.contain,
),
              const SizedBox(height: 24),
              Text(
                context.tr('login.title'),
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                context.tr('login.subtitle'),
                textAlign: TextAlign.center,
                style: TextStyle(color: colorScheme.onSurfaceVariant),
              ),
              const SizedBox(height: 32),
              AppTextField(
                label: context.tr('login.email'),
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('login.password'),
                icon: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 24),
              AppButton(
                text: context.tr('login.button'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HomePage(onThemeChanged: onThemeChanged),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(context.tr('login.no_account')),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SignUpPage(onThemeChanged: onThemeChanged),
                        ),
                      );
                    },
                    child: Text(context.tr('login.sign_up')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}