import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/provider/provider_settings.dart';
import 'package:islam/ui/home/home_screen.dart';
import 'package:islam/ui/home/screens/hadith_details.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';
import 'package:islam/ui/home/splash_screen.dart';
import 'package:islam/ui/styles/my_theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      child: MyApplication(),
    ),
  );
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(settingsProvider.currentLocal),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
