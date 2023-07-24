import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider extends ChangeNotifier
{
  ThemeMode currentTheme = ThemeMode.dark;

  changeCurrentMode(ThemeMode newTheme) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    currentTheme = newTheme;
    notifyListeners();
    prefs.setString('theme', ThemeMode == ThemeMode.light?'light':"dark");
  }
}