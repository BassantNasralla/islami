import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class MyTheme{

  static ThemeData lightTheme = ThemeData(
    dividerColor: AppColor.primairyColor,
    canvasColor: AppColor.primairyColor,
    primaryColor: AppColor.primairyColor,
    scaffoldBackgroundColor: Colors.transparent,
    cardColor: AppColor.accentColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          color: AppColor.accentColor,
          size: 35,
        ),
        unselectedIconTheme: IconThemeData(
            color: AppColor.white,
            size: 30
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          color: AppColor.accentColor,
        ),
        selectedItemColor: AppColor.accentColor,
      ),
      textTheme: TextTheme(
      titleLarge:  TextStyle(
        color: AppColor.accentColor,
        fontWeight: FontWeight.w500,
        fontSize: 25,
      ),//suraName
      bodyLarge: TextStyle(color: AppColor.accentColor,fontSize: 20,fontWeight: FontWeight.w500)//text sura

    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle:  TextStyle(color: AppColor.accentColor,fontWeight:FontWeight.bold,fontSize: 20)
    )
  );
  static ThemeData darkTheme = ThemeData(
      dividerColor: AppColor.primairyColor,
      canvasColor: AppColor.primairyColorDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: AppColor.accentColorDark,
        size: 35,
      ),
      unselectedIconTheme: IconThemeData(
        color: AppColor.white,
        size: 30
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        color: AppColor.accentColorDark,
      ),
      selectedItemColor: AppColor.accentColorDark,
    ),
      primaryColor: AppColor.primairyColorDark,
      scaffoldBackgroundColor: Colors.transparent,
      cardColor: AppColor.accentColorDark,
      textTheme: TextTheme(
          titleLarge:  TextStyle(
            color: AppColor.accentColorDark,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),//suraName
          bodyLarge: TextStyle(color: AppColor.accentColorDark,fontSize: 20,fontWeight: FontWeight.w500)//text sura

      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle:  TextStyle(color: AppColor.accentColorDark,fontWeight:FontWeight.bold,fontSize: 20)
      )
  );

}