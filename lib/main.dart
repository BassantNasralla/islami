import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/screens/ahadeth_details/ahadeth_details.dart';
import 'package:islami/screens/home/home.dart';
import 'package:islami/screens/home/tabs/ahades/ahades_tab.dart';
import 'package:islami/screens/sura_details/sura_details.dart';
import 'package:islami/utils/my_them.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {

  runApp(
    ChangeNotifierProvider(
        create: (_) => SettingProvider(),
        child:MyApp()
    )
    );
}

class MyApp extends StatelessWidget {
 late SettingProvider provider;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    intPref();
    return MaterialApp(
      theme: MyTheme.lightTheme,
      themeMode: provider.currentTheme,
      darkTheme:MyTheme.darkTheme ,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale('en'),
      routes: {
        home.routename: (_)=> home(),
        SuraDetails.routename: (_)=> SuraDetails(),
        AhadesTab.routename:(_)=> AhadesTab(),
        AhadethDetails.routename: (_)=>AhadethDetails(),
      },
      initialRoute: home.routename,
    );
  }
  intPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String theme = prefs.getString('them')?? 'light';
    provider.changeCurrentMode(theme == 'light' ? ThemeMode.light : ThemeMode.dark);
  }
}
