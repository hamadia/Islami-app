import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/provider/provider_settings.dart';
import 'package:islam/ui/home/quran_tab/sura_name.dart';
import 'package:islam/ui/home/screens/quran_details.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    SuraArgs args = ModalRoute.of(context)?.settings.arguments as SuraArgs;

    if (verses.isEmpty) {
      readQuranFile(args.index);
    }

    return verses.isEmpty
        ? const Center(child: CircularProgressIndicator())
        : Container(
            decoration: BoxDecoration(
              image: DecorationImage(
          image: AssetImage(
            settingsProvider.getBackground(),
                ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(8),
            child: Card(
              margin: const EdgeInsets.all(22),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                  width: double.infinity,
                  height: 2,
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  color: Theme.of(context).dividerColor,
                ),
                itemBuilder: (context, index) =>
                    QuranDetails(quranText: verses[index]),
                itemCount: verses.length,
              ),
            ),
          )),
    );
  }

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    for (int i = 0; i < suraLines.length; i++) {}
    setState(() {});
  }
}
