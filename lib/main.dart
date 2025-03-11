import 'package:flutter/material.dart';
import 'package:to_do_project/Screens/Login_signUp/LoginScreen.dart';

import 'Screens/Login_signUp/Email_InsertScreen.dart';
import 'Screens/Login_signUp/SetPassword.dart';
import 'Screens/Login_signUp/SignUp.dart';
import 'Screens/Login_signUp/pinVerification.dart';
import 'Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            filled: true,
            fillColor: Colors.white


        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),

              backgroundColor: Colors.green,
              foregroundColor: Colors.white
          ),
        ),


      ),
      debugShowCheckedModeBanner: false,
        title: 'Flutter Demo', home: Signup());
  }
}
