import 'package:flutter/material.dart';
import 'package:islami/screens/home/tabs/setting/mode_buttom_sheet.dart';
import 'package:islami/utils/app_colors.dart';

class settingTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Spacer(
          flex: 2,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Mode', style: Theme.of(context).textTheme.bodyLarge),
        ),
        InkWell(
            onTap: () {
              onClickedMode(context);

            },
            child: rowOption(context,'Light')),
        Spacer(
          flex: 8,
        )

      ],
    );
  }

  Widget rowOption(BuildContext context ,String selectedoption) {
    return Padding(
      padding: const EdgeInsets.all(20),

      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color:Theme.of(context).primaryColor)
            ),

            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(selectedoption,
                    style: TextStyle(color: Theme.of(context).primaryColor),),
                ),
                Spacer(),

                Icon(Icons.arrow_drop_down),
              ],


            ),
          ),
        ],
      ),
    );
  }

  void onClickedMode(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return ModeButtomSheet();
    });
  }
}


