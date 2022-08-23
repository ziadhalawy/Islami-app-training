import 'package:flutter/material.dart';

class suraFormat extends StatelessWidget {
  String content;

  int index;

  suraFormat(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        alignment: Alignment.centerRight,
        child: Text(
          content,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
