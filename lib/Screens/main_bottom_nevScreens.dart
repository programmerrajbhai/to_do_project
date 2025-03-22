import 'package:flutter/material.dart';
import 'package:to_do_project/Screens/Login_signUp/Email_InsertScreen.dart';
import 'package:to_do_project/Screens/Nav_Screens/new_task_screen.dart';

import '../widget/appbar.dart';

class MainBottomNevscreens extends StatefulWidget {
  const MainBottomNevscreens({super.key});

  @override
  State<MainBottomNevscreens> createState() => _MainBottomNevscreensState();
}

class _MainBottomNevscreensState extends State<MainBottomNevscreens> {

  int selectIndex=0;
  List<Widget> screens=[
    NewTaskScreen(),
    EmailInsertscreen(),
    NewTaskScreen(),
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
            NavigationDestination(icon: Icon(Icons.add), label: 'add'),
            NavigationDestination(icon: Icon(Icons.notifications), label: 'Notifications'),
          ]
      ),
    );
  }
}

