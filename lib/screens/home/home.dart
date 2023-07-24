import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/screens/home/tabs/ahades/ahades_tab.dart';
import 'package:islami/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami/screens/home/tabs/setting/setting.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:provider/provider.dart';
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
    settingTab()
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return
       Container(
        decoration: BoxDecoration(image: DecorationImage(image:
        AssetImage(
        provider.currentTheme == ThemeMode.light?'assets/home_page.png':'assets/home_page_dark.png'
        ))),
        child: Scaffold(
          body: tabs[currentIndex],
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle:true ,
            title: Text('اسلامى',style:Theme.of(context).appBarTheme.titleTextStyle,),
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
                label:'القران' ,
                  icon: ImageIcon(AssetImage('assets/icon_quran.png'))),
              BottomNavigationBarItem(
                label:'الاحاديث' ,
                  icon: ImageIcon(AssetImage('assets/icon_hadeth.png'))),
              BottomNavigationBarItem(
                label:'سبحة' ,
                  icon: ImageIcon(AssetImage('assets/icon_sebha.png'))),
              BottomNavigationBarItem(
                label: 'الاعدادات',
                  icon: Icon(Icons.settings,size: 28,))

            ],
          ) ,
        ),
    );
  }
}
