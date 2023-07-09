import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/ahadeth_details.dart';
import 'package:islami/screens/ahadeth_details/ahadeth_details.dart';

import '../../../../utils/app_colors.dart';

class AhadesTab extends StatefulWidget {
  @override
  State<AhadesTab> createState() => _AhadesTabState();
  static String routename = 'ahadethTab';

}

class _AhadesTabState extends State<AhadesTab> {
 List<String> ahadesNames = [];
 List<ahadethDetailsArgs> ahadethList = [];

  @override
  Widget build(BuildContext context) {
print(ahadethList);   readNameHadeth();
    return Scaffold(

      backgroundColor: Colors.transparent,
      body: Column(

        children: [
          Expanded(
            flex: 35,
            child: Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 200,
              child: Image.asset('assets/ahadeth_logo.png'),
            ),
          ),
          Divider(
            color: AppColor.primairyColor,
            thickness: 3,
          ),
          Container(
            child: Text('Sura Name',
              style: TextStyle(
                color: AppColor.accentColor,
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),),
          ),
          Divider(
            color: AppColor.primairyColor,
            thickness: 3,
          ),
         Expanded(
            flex: 65,
            child: ListView.separated(
              itemCount: ahadesNames.length,
              itemBuilder: (context, index) {
                return buildHadethItems(context,index);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: AppColor.primairyColor,
                  thickness: 3,
                );
              },
            ),
          ),


        ],
      ),
    );
  }
 Widget buildHadethItems(BuildContext context,int index) {
   return InkWell(
     onTap: () {
     },
     child: Text(
       ahadethList[index].hadethName, style: TextStyle(fontSize: 18,
         fontWeight: FontWeight.w400,
         color: AppColor.accentColor),
       textAlign: TextAlign.center,
     ),
   );
 }

readNameHadeth()async{
    for ( int i = 1 ; i <= 50 ; i++ )
    {
      String hadethfile = await rootBundle.loadString("assets/files_ahadeth/h${i}.txt");
      List<String> singleAhadethLine = hadethfile.split('\n');
      String hadethName = singleAhadethLine[0];
      String content = singleAhadethLine.join('\n');
      print('title: ${hadethName}');
      print('content: $content');
      ahadethList.add(ahadethDetailsArgs(hadethName, content));
    }

}
}
