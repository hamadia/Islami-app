import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/ui/home/hadith_tab/hadith_tab.dart';
import 'package:islam/ui/home/quran_tab/quran_tab.dart';
import 'package:islam/ui/home/radio_tab/radio_tab.dart';
import 'package:islam/ui/home/setting_tab/setting_tab.dart';
import 'package:islam/ui/home/tasbeh_tab/tasbeh_tab.dart';
import 'package:islam/ui/styles/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            MyThemeData.isDarkSelected
                ? 'assets/images/dark_background.png'
                : 'assets/images/main_background.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(AppLocalizations.of(context)!.app_title),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndexTab,
              onTap: (index) {
                selectedIndexTab = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: AppLocalizations.of(context)!.quan_tab),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadith.png')),
                    label: AppLocalizations.of(context)!.hadith_tab),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh_tab),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio_tab),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings_tab),
              ],
            ),
            body: tabs[selectedIndexTab],
          ),
        ],
      ),
    );
  }
}
