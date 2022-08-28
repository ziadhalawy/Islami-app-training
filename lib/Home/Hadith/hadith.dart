import 'package:flutter/material.dart';
import 'package:untitled1/Colors.dart';

import 'hadith_name.dart';

class hadithTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> number_Hadith = [];

    return Container(
      child: Column(
        children: [
          Image.asset('assets/icons/fanos.png'),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal:
                        BorderSide(color: myColors.primaryColor, width: 3))),
            child: Text(
              'اسم السورة',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: number_Hadith.length,
              itemBuilder: (_, index) {
                return hadithName(number_Hadith[index], index);
              },
              separatorBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 2,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
