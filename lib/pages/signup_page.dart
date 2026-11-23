import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';
import 'home_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr('signup.title'))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              AppTextField(
                label: context.tr('signup.name'),
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('signup.email'),
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              AppTextField(
                label: context.tr('signup.password'),
                icon: Icons.lock,
                isPassword: true,
              ),
              const SizedBox(height: 24),
              AppButton(
                text: context.tr('signup.button'),
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
                  Text(context.tr('signup.have_account')),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(context.tr('signup.login')),
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