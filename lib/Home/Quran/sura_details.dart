import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Home/Quran/sura_format.dart';
import 'package:untitled1/Home/Quran/sura_name_widget.dart';

class suraDetails extends StatefulWidget {
  static const routeName = 'Sura Details';

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as argData;
    if (verses.isEmpty) {
      readFiles(args.index);
    }
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/icons/backgroundimage.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                args.title,
              ),
            ),
            body: verses.isEmpty
                ? Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.fromLTRB(5, 50, 5, 20),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: ListView.separated(
                          itemBuilder: (_, index) {
                            return suraFormat(
                                "{${index + 1}}${verses[index]}", index);
                          },
                          itemCount: verses.length,
                          separatorBuilder: (_, index) {
                            return Container(
                              color: Colors.black,
                              height: 2,
                            );
                          }),
                    ),
                  )));
  }

  void readFiles(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> Lines = content.split('\n');
    verses = Lines;
    TextSpan(text: "$verses", style: TextStyle());
    print(verses);
    setState(() {});
  }
}
