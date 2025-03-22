import 'package:flutter/material.dart';
import 'package:to_do_project/Screens/Login_signUp/Email_InsertScreen.dart';
import 'package:to_do_project/Screens/Nav_Screens/new_task_screen.dart';
import 'package:to_do_project/Screens/Nav_Screens/progressScreens.dart';

import '../widget/appbar.dart';
import 'Nav_Screens/CancleTaskScreens.dart';
import 'Nav_Screens/CompletedTaskScreens.dart';

class MainBottomNevscreens extends StatefulWidget {
  const MainBottomNevscreens({super.key});

  @override
  State<MainBottomNevscreens> createState() => _MainBottomNevscreensState();
}

class _MainBottomNevscreensState extends State<MainBottomNevscreens> {

  int selectIndex=0;
  List<Widget> screens=[
    NewTaskScreen(),
    Progress_Screens(),
    CompletedTaskScreens(),
    CancleTaskScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(),
      body: screens[selectIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectIndex,
          onDestinationSelected: (index){
          selectIndex= index;
          setState(() {
          });
          },
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.work_history_rounded), label: 'Progress'),
            NavigationDestination(icon: Icon(Icons.incomplete_circle), label: 'Completed'),
            NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancel'),
          ]
      ),
    );
  }
}

