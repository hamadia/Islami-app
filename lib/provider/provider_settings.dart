import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLocal = 'en';

  void changeTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  void changeLocal(String newLocal) {
    if (currentLocal == newLocal) return;
    currentLocal = newLocal;
    notifyListeners();
  }

  String getBackground() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/dark_background.png';
  }
}
