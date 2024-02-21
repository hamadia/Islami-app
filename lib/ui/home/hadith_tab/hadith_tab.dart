import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/ui/home/hadith_tab/hadith_title_widget.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  @override
  Widget build(BuildContext context) {
    if (ahadith.isEmpty) loadHadithFile();
    return ahadith.isEmpty
        ? Center(
            child: CircularProgressIndicator(),
          )
        : Container(
            child: Column(
              children: [
                Image.asset('assets/images/hadeth_logo.png'),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 45),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                    horizontal: BorderSide(color: Color(0xFFB7935F), width: 2),
                  )),
                  child: const Text(
                    'Ahadith',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          HadithTitleWidget(hadith: ahadith[index]),
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 45),
                            color: const Color(0xFFB7935F),
                            width: double.infinity,
                            height: 2,
                          ),
                      itemCount: ahadith.length),
                ),
              ],
            ),
          );
  }

  List<Hadith> ahadith = [];

  void loadHadithFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allHadith = fileContent.trim().split('#');
    for (int i = 0; i < allHadith.length; i++) {
      List<String> hadithLines = allHadith[i].split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: hadithContent);
      ahadith.add(hadith);
    }
    setState(() {});
  }
}

class Hadith {
  String title;
  String content;

  Hadith({required this.title, required this.content});
}