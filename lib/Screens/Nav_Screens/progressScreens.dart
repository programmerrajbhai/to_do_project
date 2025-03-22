import 'package:flutter/material.dart';
import 'package:to_do_project/widget/List_Items_design.dart';

import '../../widget/SummaryDashBoard.dart';

class Progress_Screens extends StatefulWidget {
  const Progress_Screens({super.key});

  @override
  State<Progress_Screens> createState() => _Progress_ScreensState();
}

class _Progress_ScreensState extends State<Progress_Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            child: ListView.builder(itemBuilder: (contex, index){
              return ListItems(
                colors: Colors.deepPurpleAccent,
                status: 'Progress',
              );
            }),
          ),


        ],
      ),

    );
  }

}
