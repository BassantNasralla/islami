import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/sura_details.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static String routename = 'sura_details';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as suraDetailsArgs;
     SettingProvider provider = Provider.of(context);
    if(suraLines.isEmpty)readSuraContent(arg.fileName);
    return Container(
      decoration: BoxDecoration(image: DecorationImage(
          image:AssetImage(
              provider.currentTheme == ThemeMode.light?'assets/home_page.png':'assets/home_page_dark.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(arg.suraName,style:Theme.of(context).appBarTheme.titleTextStyle ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: suraLines.isEmpty?CircularProgressIndicator():
           ListView.builder(
               itemBuilder: (context,index){
                 return Text(
                   "${suraLines[index]}(${index+1})",
                   style:Theme.of(context).textTheme.titleLarge ,
                   textAlign: TextAlign.right,
                 );
               },

               itemCount: suraLines.length)
          ),
        ),
      );

  }

  readSuraContent(String fileName)async{
    var suraContent = await rootBundle.loadString('assets/files/${fileName}');
    suraLines = suraContent.split('\n');
   setState(() {});

  }
}
