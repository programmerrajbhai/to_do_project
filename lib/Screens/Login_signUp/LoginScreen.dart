import 'package:flutter/material.dart';
import 'package:to_do_project/Screens/splash_screen.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}
class _LoginscreenState extends State<Loginscreen> {

  Future<void> MoveAno()async{
    Future.delayed(Duration(seconds: 3));
     Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context)=>SplashScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Screenbackground(child:Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Text("Get Started with",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 26
          )),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Email")
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
                label:Text('Password')
            ),
          ),
          SizedBox(height: 25,),
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
          ),
          SizedBox(height: 30,),
          Center(
            child: Column(
              children: [
                TextButton(onPressed: (){}, child: Text("Forgot Password")),

                SizedBox(height: 10,),
                RichText(text: TextSpan(
                    style: TextStyle(
                        color: Colors.black
                    ),
                    children: [
                      TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: 'Sign Up',style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold

                      )
                      )
                    ]
                ))
              ],
            ),
          )


        ],
      ),
      ),
    ),);
  }
}
