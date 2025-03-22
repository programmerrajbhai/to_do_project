import 'package:flutter/material.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Screenbackground(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height* 0.1,),
          Text("Join With Us", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Email')
            ),
          ),
          SizedBox(height: 10,),

          TextFormField(
            decoration: InputDecoration(
                label: Text('First Name')
            ),
          ),
          SizedBox(height: 10,),

          TextFormField(
            decoration: InputDecoration(
                label: Text('Last Name')
            ),
          ),
          SizedBox(height: 10,),

          TextFormField(
            decoration: InputDecoration(
                label: Text('Mobile')
            ),
          ),
          SizedBox(height: 10,),

          TextFormField(
            decoration: InputDecoration(
                label: Text('Password')
            ),
          ),
          SizedBox(height: 20,),

          ElevatedButton(onPressed: (){},
              child: Icon(Icons.arrow_circle_right_outlined)),

          SizedBox(height: 20,),
          Center(
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text: "Have account?  "),
                TextSpan(text: "Sign In",
                style: TextStyle(
                  color: Colors.green
                )),
              ]
            )),
          ),
        ],
      ),
    ));
  }
}
