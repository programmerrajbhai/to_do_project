import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:to_do_project/utils/assets_path.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';

import 'Login_signUp/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> moveAnotherScreen() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (contex) => const Loginscreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveAnotherScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Screenbackground(
      child: Stack(
        children: [Center(child: SvgPicture.asset(ImagePath.logoImg))],
      ),
    );
  }
}
