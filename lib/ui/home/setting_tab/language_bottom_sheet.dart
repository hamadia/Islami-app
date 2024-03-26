import 'package:flutter/material.dart';
import 'package:islam/provider/provider_settings.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
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
              settingsProvider.changeLocal('en');
            },
            child: settingsProvider.currentLocal == 'en'
                ? getSelectedItem('English')
                : getUnSelectedItem('English'),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              settingsProvider.changeLocal('ar');
            },
            child: settingsProvider.currentLocal == 'ar'
                ? getSelectedItem('العربية')
                : getUnSelectedItem('Arabic'),
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
        ),
      ],
    );
  }
}
