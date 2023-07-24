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
  List<ahadethDetailsArgs> ahadethList = [];


  @override
  Widget build(BuildContext context) {
   // print(ahadethList);
    if(ahadethList.isEmpty) readNameHadeth();
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
            color: Theme.of(context).dividerColor,
            thickness: 3,
          ),
          Container(
            child: Text(
              'الاحاديث',
              style: Theme.of(context).textTheme.titleLarge
            ),
          ),
          Divider(
            color:Theme.of(context).dividerColor,
            thickness: 3,
          ),
          Expanded(
            flex: 65,
            child: ListView.separated(
              itemCount: ahadethList.length,
              itemBuilder: (context, index) {
                return buildHadethItems(context, index);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Theme.of(context).dividerColor,
                  thickness: 3,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHadethItems(BuildContext context, int index) {
    //print(ahadethList);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AhadethDetails.routename,
            arguments: ahadethList[index]);
      },
      child: Text(
        ahadethList[index].hadethName,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
    );
  }

  Future<void> readNameHadeth() async {
    for (int i = 1; i <= 50; i++) {
      String hadethfile =
      await rootBundle.loadString("assets/files_ahadeth/h${i}.txt");
      List<String> singleAhadethLine = hadethfile.split('\n');
     // print(hadethfile);
      String hadethName = singleAhadethLine.removeAt(0);
      String content = singleAhadethLine.join('\n');
      ahadethDetailsArgs hadeth = ahadethDetailsArgs(hadethName, content);
      ahadethList.add(hadeth);
    }
    // ahadethList.forEach((ahadeth) {
    //   print(ahadeth.hadethName);
    // });
    setState(() {});

  }
}