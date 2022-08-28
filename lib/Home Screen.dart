import 'package:flutter/material.dart';
import 'package:untitled1/Home/Hadith/hadith.dart';
import 'package:untitled1/Home/Quran/quran.dart';
import 'package:untitled1/Home/Radio/radio.dart';
import 'package:untitled1/Home/Tasbih/tasbih.dart';

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
          title: Text(
            'Islami',
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 48, 0, 0),
          child: itemBar[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
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
    );
  }

  int selectedIndex = 0;

  List<Widget> itemBar = [quranTap(), hadithTap(), sibhaTap(), radioTab()];
}
