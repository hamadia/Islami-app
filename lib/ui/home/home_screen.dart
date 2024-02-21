import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadith_tab/hadith_tab.dart';
import 'package:islam/ui/home/quran_tab/quran_tab.dart';
import 'package:islam/ui/home/radio_tab/radio_tab.dart';
import 'package:islam/ui/home/setting_tab/setting_tab.dart';
import 'package:islam/ui/home/tasbeh_tab/tasbeh_tab.dart';

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
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/main_background.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text('Islami'),
            ),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndexTab,
              onTap: (index) {
                selectedIndexTab = index;
                setState(() {});
              },
              items: const [
                BottomNavigationBarItem(
                    backgroundColor: Color(0xFFB7935F),
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xFFB7935F),
                    icon:
                        ImageIcon(AssetImage('assets/images/icon_hadith.png')),
                    label: 'Hadith'),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xFFB7935F),
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xFFB7935F),
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    backgroundColor: Color(0xFFB7935F),
                    icon: Icon(Icons.settings),
                    label: 'Settings'),
              ],
            ),
            body: tabs[selectedIndexTab],
          ),
        ],
      ),
    );
  }
}
