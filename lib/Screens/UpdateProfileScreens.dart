import 'package:flutter/material.dart';
import 'package:to_do_project/widget/appbar.dart';

class Updateprofilescreens extends StatefulWidget {
  const Updateprofilescreens({super.key});

  @override
  State<Updateprofilescreens> createState() => _UpdateprofilescreensState();
}

class _UpdateprofilescreensState extends State<Updateprofilescreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text("Update Profile",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),),

            SizedBox(height: 25,),

            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  GestureDetector(
                     onTap: (){
                       _OnTapImagePicker();
                     },
                    child: Container(
                      height: 50,
                      width: 80,
                      alignment: Alignment.center,
                      child: Text('Photo',
                      style: TextStyle(
                        color: Colors.white,
                      ),),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Select your photo')
                ],
              ),
            ),

            SizedBox(height: 20,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text('Email'),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text('First Name'),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text('Last Name'),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text('Mobile'),
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Password'),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                child: Icon(Icons.arrow_circle_right_sharp)
            )
          ],
        ),
      ),
    );
  }



  _OnTapImagePicker(){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Work")));
  }


}
