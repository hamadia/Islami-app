import 'package:flutter/material.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';

class SuraName extends StatelessWidget {
  SuraArgs suraArgs;

  SuraName({required this.suraArgs});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routeName,
          arguments: SuraArgs(title: suraArgs.title, index: suraArgs.index),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          suraArgs.title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs({required this.title, required this.index});
}
