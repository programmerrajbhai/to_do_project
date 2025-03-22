import 'package:flutter/material.dart';
import 'package:to_do_project/widget/List_Items_design.dart';

import '../../widget/SummaryDashBoard.dart';

class CompletedTaskScreens extends StatefulWidget {
  const CompletedTaskScreens({super.key});

  @override
  State<CompletedTaskScreens> createState() => _CompletedTaskScreensState();
}

class _CompletedTaskScreensState extends State<CompletedTaskScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            child: ListView.builder(itemBuilder: (contex, index){
              return ListItems(
                colors: Colors.green,
                status: 'Completed',
              );
            }),
          ),


        ],
      ),

    );
  }

}
