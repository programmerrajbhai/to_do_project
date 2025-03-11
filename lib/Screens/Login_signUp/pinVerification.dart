import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:to_do_project/widget/ScreenBackground.dart';


class Pinverification extends StatefulWidget {
  const Pinverification({super.key});

  @override
  State<Pinverification> createState() => _PinverificationState();
}

class _PinverificationState extends State<Pinverification> {
  @override
  Widget build(BuildContext context) {
    return Screenbackground(child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height* 0.1,
          ),
          Text("PIN Verification",style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Text('A 6 digit verification pin will send to your\nemail adress'),
          SizedBox(height: 30,),
          PinCodeTextField(
            appContext: context,
            length: 6,
            obscureText: true, // Password type dot, false korle number show korbe
            obscuringCharacter: '*', // Obscure text character
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 50,
              fieldWidth: 40,
              activeFillColor: Colors.white,
              inactiveFillColor: Colors.grey.shade200,
              selectedFillColor: Colors.white,
              activeColor: Colors.teal,
              selectedColor: Colors.blue,
              inactiveColor: Colors.grey,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.white,
            enableActiveFill: true,
            keyboardType: TextInputType.number,
            onCompleted: (v) {
              print("Completed PIN: $v");
              // PIN verify function call korte paro ekhane
            },
            onChanged: (value) {
              print(value);
            },
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){},
              child: Text("Verify",style: TextStyle(
                color: Colors.white
              ),)),
          SizedBox(height: 30,),
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

        ],
      ),
    ));
  }
}
