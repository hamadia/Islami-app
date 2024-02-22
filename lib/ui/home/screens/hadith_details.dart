import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadith_tab/hadith_tab.dart';
import 'package:islam/ui/styles/my_theme_data.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadithDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              MyThemeData.isDarkSelected
                  ? 'assets/images/dark_background.png'
                  : 'assets/images/main_background.png',
            )),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text('Islami'),
        ),
        body: Container(
            padding: const EdgeInsets.all(22),
            child: SingleChildScrollView(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        args.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        args.content,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
