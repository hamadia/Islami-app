import 'package:flutter/material.dart';

class QuranDetails extends StatelessWidget {
  String quranText;

  QuranDetails({required this.quranText});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(quranText),
    );
  }
}
