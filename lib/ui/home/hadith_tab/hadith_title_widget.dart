import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadith_tab/hadith_tab.dart';
import 'package:islam/ui/home/screens/hadith_details.dart';

class HadithTitleWidget extends StatelessWidget {
  Hadith hadith;

  HadithTitleWidget({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,
            arguments: Hadith(title: hadith.title, content: hadith.content));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        alignment: Alignment.center,
        child: Text(
          hadith.title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
