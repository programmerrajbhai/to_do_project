import 'package:flutter/material.dart';

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
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Here is Our Title to be Define",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'In this episode, we will add Social Media Style Like, Comment, and Share icons in the News Post desig'),
                      Text(
                        'Date: 02/04.2025',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Card(
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 2
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "New",
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.green,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,                        ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                );
            }),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
}
