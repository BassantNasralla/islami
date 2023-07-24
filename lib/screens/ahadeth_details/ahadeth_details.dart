import 'package:flutter/material.dart';
import 'package:islami/model/ahadeth_details.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:provider/provider.dart';

class AhadethDetails extends StatelessWidget {
   static String routename = 'ahadethDetails';


   @override
   Widget build(BuildContext context) {
     var ahadeth = ModalRoute.of(context)!.settings.arguments as ahadethDetailsArgs;
     SettingProvider provider = Provider.of(context);
     return Container(
       decoration: BoxDecoration(image: DecorationImage(image:
       AssetImage(
           provider.currentTheme == ThemeMode.light?'assets/home_page.png':'assets/home_page_dark.png'))),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         appBar: AppBar(
           title: Text(ahadeth.hadethName,style: Theme.of(context).textTheme.titleLarge),
           centerTitle: true,
           backgroundColor: Colors.transparent,
           elevation: 0,
         ),
           body:
         Center(
           child: Column(
             children: [
               Text(
                 ahadeth.content,
                 style:Theme.of(context).textTheme.bodyLarge ,
                 textAlign: TextAlign.right,
               ),
             ],
           ),
         )
       ),
     );

   }
}
