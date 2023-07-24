import 'package:flutter/material.dart';
import 'package:islami/provider/setting_provider.dart';
import 'package:islami/utils/app_colors.dart';
import 'package:provider/provider.dart';

class SebhaTap extends StatefulWidget {
  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int index = 0;
  double angle = 0;
  int tasbehCount = 0;

  List<String> tasbehItem = [
    'سبحان الله',
    'الحمد لله',
    'لا اله الا الله',
    'الله واكبر',
  ];

  @override
  Widget build(BuildContext context) {
   SettingProvider provider = Provider.of(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height *0.05,
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1
                ),
                child: Image.asset(
                    provider.currentTheme == ThemeMode.light?'assets/head of seb7a light.png':'assets/head of seb7adark.png'),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.09
                ),
                child: GestureDetector(
                  onTap: (){
                    onSebhaClick();
                  },
                    child:
                    Transform.rotate(
                      angle:angle ,
                        child: Image.asset(
                            provider.currentTheme == ThemeMode.light?'assets/body of seb7a light.png':'assets/body of seb7a dark.png'))),
              ),
            ],
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.02,
          ),
          Text('عدد التسبيحات',style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.02,
          ),

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
              color: Theme.of(context).primaryColor,
            ),
            height: MediaQuery.of(context).size.height *0.1,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Center(
              child: Text(
                '$tasbehCount' ,
                style:Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          SizedBox(
            height:MediaQuery.of(context).size.height * 0.04,
          ),

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
              color: Theme.of(context).primaryColor,
            ),
            height: MediaQuery.of(context).size.height *0.08,
            width: MediaQuery.of(context).size.width * 0.5,
            child: Center(
              child: Text(
                tasbehItem[index] ,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),

        ],
      ),
    );
  }

  void onSebhaClick() {
    angle += 60 ;
    tasbehCount ++;
    if(tasbehCount % 33 == 0){
      index ++;
    }if(index == tasbehItem.length){
      index = 0;
      tasbehCount = 0;

    }
    setState(() {});
  }
}
