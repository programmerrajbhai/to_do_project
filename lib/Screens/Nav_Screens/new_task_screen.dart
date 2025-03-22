import 'package:flutter/material.dart';
import 'package:to_do_project/Screens/AddTaskScreens.dart';

import '../../widget/List_Items_design.dart';
import '../../widget/SummaryDashBoard.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSingleChildScrollView(),

          Expanded(
            child: ListView.builder(itemBuilder: (contex, index){
              return
                ListItems(
                  status: 'New',
                  colors: Colors.blueAccent,
                );
            }),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onTapAddButtons,
        child: Icon(Icons.add),
      ),
    );
  }

  SingleChildScrollView buildSingleChildScrollView() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Summary_Dashboard(
            count: '12',
            title: "New",
          ),
          Summary_Dashboard(
            count: '12',
            title: "Progress",
          ),
          Summary_Dashboard(
            count: '16',
            title: "Completed",
          ),
          Summary_Dashboard(
            count: '26',
            title: "Cancled",
          ),
        ],
      ),
    );
  }

  void _onTapAddButtons(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Addtaskscreens()));
  }

}
