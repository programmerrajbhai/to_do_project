import 'package:flutter/material.dart';

import '../widget/appbar.dart';

class Addtaskscreens extends StatefulWidget {
  const Addtaskscreens({super.key});

  @override
  State<Addtaskscreens> createState() => _AddtaskscreensState();
}

class _AddtaskscreensState extends State<Addtaskscreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text("Add New Task",style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20,),
            TextFormField(
              decoration: InputDecoration(
                label: Text("Subject")
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              maxLines: 14,
              decoration: InputDecoration(
                  hintText: 'Description'
              ),
            ),

            SizedBox(height: 30,),

            ElevatedButton(onPressed: (){},
                child: Icon(Icons.arrow_circle_right_sharp))

          ],
        ),
      ),
    );
  }
}
