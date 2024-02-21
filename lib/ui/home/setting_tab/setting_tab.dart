import 'package:flutter/material.dart';
import 'package:islam/ui/home/setting_tab/language_bottom_sheet.dart';
import 'package:islam/ui/home/setting_tab/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Theme',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                //color: Color(0xFF),
                border: Border.all(
                  color: Color(0xFFB7935F),
                  width: 3,
                ),
              ),
              child: Text(
                'light',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                //color: Color(0xFF),
                border: Border.all(
                  color: Color(0xFFB7935F),
                  width: 3,
                ),
              ),
              child: Text(
                'English',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }

  showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeBottomSheet(),
    );
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
