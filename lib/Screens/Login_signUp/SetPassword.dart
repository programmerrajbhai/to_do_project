import 'package:flutter/material.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';

class Setpassword extends StatefulWidget {
  const Setpassword({super.key});

  @override
  State<Setpassword> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<Setpassword> {
  @override
  Widget build(BuildContext context) {
    return Screenbackground(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height* 0.1,),
          Text("Set Password",style:TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
          SizedBox(height: 10,),
          Text('Minimum length password 8 character with\nLatter and number combination'),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Password')
            ),
          ),       SizedBox(height: 15,),
          TextFormField(
            decoration: InputDecoration(
              label: Text('Confirm Password')
            ),
          ),
          SizedBox(height: 25,),
          
          ElevatedButton(onPressed: (){}, 
              child: Text("Confirm")),
          SizedBox(height: 20,),
          Center(
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text: 'Have account?  '),
                TextSpan(text: 'Sign In',
                style: TextStyle(color: Colors.green,
                fontWeight: FontWeight.bold)),
              ]
            )),
          )
        ],
      ),
    ));
  }
}
