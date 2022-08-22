import 'package:flutter/material.dart';
import 'package:untitled1/Colors.dart';
import 'package:untitled1/Home/Quran/sura_name_widget.dart';

class suraDetails extends StatelessWidget {
  static const routeName = 'Sura Details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as argData;
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
          body: Padding(
            padding: const EdgeInsets.fromLTRB(10, 48, 10, 1),
            child: Container(
              decoration: BoxDecoration(
                color: myColors.detailsColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ));
  }
}
