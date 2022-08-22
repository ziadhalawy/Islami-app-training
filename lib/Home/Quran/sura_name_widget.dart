import 'package:flutter/material.dart';
import 'package:untitled1/Home/Quran/sura_details.dart';

class suraName extends StatelessWidget {
  String title = '';
  int index = 0;

  suraName(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, suraDetails.routeName,
            arguments: argData(index, title));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

class argData {
  int index;
  String title;

  argData(this.index, this.title);
}
