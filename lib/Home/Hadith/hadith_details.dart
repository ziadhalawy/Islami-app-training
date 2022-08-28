import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled1/Home/Hadith/hadith_format.dart';

import 'hadith_name.dart';

class hadithDetails extends StatefulWidget {
  static const routeName = 'Hadith Details';

  @override
  State<hadithDetails> createState() => _hadithDetailsState();
}

class _hadithDetailsState extends State<hadithDetails> {
  List<Hadeth> Hadithas = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadithData;
    if (Hadithas.isEmpty) {
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
          body: ListView.builder(
            itemBuilder: (_, index) {
              return hadithFormat(Hadithas[index].content, index);
            },
          ),
        ));
  }

  void readFiles(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/hadithtxt/ahadeth.txt');
    List<String> allHadith = fileContent.trim().split('#');
    List<Hadeth> hadithOfFile = [];
    for (int i = 0; i < allHadith.length; i++) {
      String content = '';
      String title = '';
      List<String> hadithLines = allHadith[i].trim().split('\n');
      title = hadithLines[0];
      hadithLines.removeAt(0);
      content = hadithLines.join('\n');
      Hadeth h = Hadeth(content, title);
      hadithOfFile.add(h);
      print(' >>>>>>>>>>> $title');
      print(' >>>>>>>>>>> $content');
    }
    Hadithas = hadithOfFile;
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth(this.content, this.title);
}
