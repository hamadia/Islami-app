import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/provider/provider_settings.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.light);
            },
            child: settingsProvider.currentTheme == ThemeMode.light
                ? getSelectedItem(AppLocalizations.of(context)!.light)
                : getUnSelectedItem(AppLocalizations.of(context)!.light),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeTheme(ThemeMode.dark);
            },
            child: settingsProvider.currentTheme == ThemeMode.dark
                ? getSelectedItem(AppLocalizations.of(context)!.dark)
                : getUnSelectedItem(AppLocalizations.of(context)!.dark),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return InkWell(
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB7935F),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.check,
            color: Color(0xFFB7935F),
            size: 28,
          ),
        ],
      ),
    );
  }

  Widget getUnSelectedItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xFFB7935F),
          ),
        )
      ],
    );
  }
}
