import 'package:flutter/material.dart';
import 'package:untitled1/Colors.dart';
import 'package:untitled1/hadith.dart';
import 'package:untitled1/quran.dart';
import 'package:untitled1/radio.dart';
import 'package:untitled1/tasbih.dart';

class homeScreen extends StatefulWidget {
  static const routeName = 'Home Screen';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/icons/backgroundimage.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'Islami',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 48, 0, 0),
          child: itemBar[selectedIndex],
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: myColors.primaryColor),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            selectedIconTheme: IconThemeData(color: Colors.black),
            selectedLabelStyle: TextStyle(fontSize: 16, color: Colors.black),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, color: Colors.white10),
            unselectedIconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Colors.black,
                      AssetImage('assets/icons/quran-ic.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Colors.black,
                      AssetImage('assets/icons/hadeth-ic.png')),
                  label: 'Hadith'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Colors.black,
                      AssetImage('assets/icons/sebha-ic.png')),
                  label: 'Sibha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      color: Colors.black,
                      AssetImage('assets/icons/radio-ic.png')),
                  label: 'Radio'),
            ],
          ),
        ),
      ),
    );
  }

  int selectedIndex = 0;

  List<Widget> itemBar = [quranTap(), hadithTap(), sibhaTap(), radioTab()];
}
