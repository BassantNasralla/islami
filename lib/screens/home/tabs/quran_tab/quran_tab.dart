import 'package:flutter/material.dart';
import 'package:islami/model/sura_details.dart';
import 'package:islami/utils/app_colors.dart';

import '../../../sura_details/sura_details.dart';

class QuranTab extends StatelessWidget {
  List<String> suraname =
  [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود"
    ,
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون"
    ,
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ"
    ,
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف"
    ,
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة"
    ,
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج"
    ,
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار"
    ,
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح"
    ,
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
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
              child: Image.asset('assets/quran_pg.png'),
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
              itemCount: suraname.length,
              itemBuilder: (context, index) {
                return buildSuraItems(context,index);
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

  Widget buildSuraItems(BuildContext context,int index) {
    return InkWell(
      onTap: () {
     Navigator.pushNamed(context, SuraDetails.routename,
     arguments: suraDetailsArgs("${index+1}.txt", suraname[index]));
      },
      child: Text(

        suraname[index], style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColor.accentColor),
        textAlign: TextAlign.center,
      ),
    );
  }

}
