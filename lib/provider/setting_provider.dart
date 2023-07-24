import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier
{
  ThemeMode currentTheme = ThemeMode.dark;

  changeCurrentMode(ThemeMode newTheme){
    currentTheme = newTheme;
    notifyListeners();
  }
}