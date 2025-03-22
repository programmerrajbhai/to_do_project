import 'package:flutter/material.dart';
import 'package:to_do_project/widget/List_Items_design.dart';

import '../../widget/SummaryDashBoard.dart';

class CancleTaskScreens extends StatefulWidget {
  const CancleTaskScreens({super.key});

  @override
  State<CancleTaskScreens> createState() => _CancleTaskScreensState();
}

class _CancleTaskScreensState extends State<CancleTaskScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            child: ListView.builder(itemBuilder: (contex, index){
              return ListItems(
                colors: Colors.red,
                status: 'Cancel',
              );
            }),
          ),


        ],
      ),

    );
  }

}
