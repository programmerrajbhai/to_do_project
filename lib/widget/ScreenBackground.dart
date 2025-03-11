
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/assets_path.dart';

class Screenbackground extends StatelessWidget {
  const Screenbackground({super.key, required this.child});

 final Widget child;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Stack(
          children: [
            SvgPicture.asset(
                ImagePath.backgroundIMG,
              width: double.maxFinite,
              height: double.maxFinite,
              fit: BoxFit.cover,


            ),
            child,

          ],

        )
    );
  }
}
