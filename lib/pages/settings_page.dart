import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../widgets/language_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key, required this.onThemeChanged});

  final ValueChanged<bool> onThemeChanged;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: Text(context.tr('settings.title'))),
      body: Column(
        children: [
          ListTile(
            title: Text(context.tr('settings.language')),
            trailing: const LanguageButton(),
          ),
          ListTile(
            title: Text(context.tr('settings.dark_mode')),
            trailing: Switch(value: isDark, onChanged: onThemeChanged),
          ),
        ],
      ),
    );
  }
}