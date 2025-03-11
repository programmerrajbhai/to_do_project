import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';

class EmailInsertscreen extends StatefulWidget {
  const EmailInsertscreen({super.key});

  @override
  State<EmailInsertscreen> createState() => _EmailInsertscreenState();
}

class _EmailInsertscreenState extends State<EmailInsertscreen> {
  @override
  Widget build(BuildContext context) {
    return Screenbackground(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            "Your Email Address",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Text('A 6 digit verification pin will send to \nemail address'),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Email')
            ),
          ),
          SizedBox(
            height: 25,
          ),
         SizedBox(
           height: 40,
           child:  ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
         ),
          SizedBox(
            height: 35,
          ),
          Center(
            child: RichText(text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: 'Have account?  '),
                TextSpan(text: 'Sign in',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                ))
              ]
            )),
          ),

          // PIN Code Input Field

        ],
      ),
    ));
  }
}
