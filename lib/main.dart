import 'package:flutter/material.dart';
import 'package:islam/ui/home/home_screen.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';
import 'package:islam/ui/home/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              size: 40,
            ),
          )),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
