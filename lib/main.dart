import 'package:flutter/material.dart';
import 'package:islami/screens/ahadeth_details/ahadeth_details.dart';
import 'package:islami/screens/home/home.dart';
import 'package:islami/screens/home/tabs/ahades/ahades_tab.dart';
import 'package:islami/screens/sura_details/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        home.routename: (_)=> home(),
        SuraDetails.routename: (_)=> SuraDetails(),
        AhadesTab.routename:(_)=> AhadesTab(),
        AhadethDetails.routename: (_)=>AhadethDetails(),
      },
      initialRoute: home.routename,
    );
  }
}
