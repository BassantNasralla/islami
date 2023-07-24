import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:provider/provider.dart';

class ModeButtomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SettingProvider provider = Provider.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Select Your Language',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20
            ),

          ),
          SizedBox(height: 20,),
          InkWell(
            onTap:(){
              provider.changeCurrentMode(ThemeMode.dark);
            } ,
            child: selectedLanguage(context,provider.currentTheme==ThemeMode.dark,'Dark '),
          ),

          SizedBox(height:13,),
          InkWell(
            onTap: (){
              provider.changeCurrentMode(ThemeMode.light);
            },
            child:selectedLanguage(context,provider.currentTheme==ThemeMode.light,'light') ,
          ),

        ],
      ),
    );
  }

  selectedLanguage(BuildContext context ,bool isSelected,String language) {

    if(isSelected == true){
    return  Text(
      textAlign: TextAlign.start,
      language,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,

        ),
      );
    }

    else{
    return  Text(
      textAlign: TextAlign.start,

      language,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).cardColor,
        ),
      );
    }
  }
}
