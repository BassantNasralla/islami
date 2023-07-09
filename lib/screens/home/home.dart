import 'package:flutter/material.dart';
import 'package:islami/screens/home/tabs/ahades/ahades_tab.dart';
import 'package:islami/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami/screens/home/tabs/radio/radio_tab.dart';
import 'package:islami/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami/utils/app_colors.dart';

class home extends StatefulWidget {
 static String routename = 'home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;
  List<Widget> tabs =
  [
    QuranTab(),
    AhadesTab(),
    SebhaTap(),
    RadioTap()
  ];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: AppColor.primairyColor),
      child: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/home_page.png'))),
        child: Scaffold(
          body: tabs[currentIndex],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle:true ,
            title: Text('aslami',style: TextStyle(color: AppColor.accentColor,fontWeight:FontWeight.bold,fontSize: 20),),
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: AppColor.accentColor,
            currentIndex: currentIndex,
            onTap: (index){
              currentIndex = index ;
              setState(() {});
            },
           iconSize: 35,
            items: [
              BottomNavigationBarItem(
                label:'Quran' ,
                  icon: ImageIcon(AssetImage('assets/icon_quran.png'))),
              BottomNavigationBarItem(
                label:'hadeth' ,
                  icon: ImageIcon(AssetImage('assets/icon_hadeth.png'))),
              BottomNavigationBarItem(
                label:'sebha' ,
                  icon: ImageIcon(AssetImage('assets/icon_sebha.png'))),
              BottomNavigationBarItem(
                label: 'radio',
                  icon: ImageIcon(AssetImage('assets/icon_radio.png'))),


            ],
          ) ,
        ),
      ),
    );
  }
}
