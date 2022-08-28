import 'package:flutter/material.dart';
import 'package:untitled1/Home/Hadith/hadith_details.dart';

class hadithName extends StatelessWidget {
  String title;

  int index;

  hadithName(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadithDetails.routeName,
            arguments: hadithData(index, title));
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 2),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}

class hadithData {
  int index;
  String title;

  hadithData(this.index, this.title);
}
