import 'package:flutter/material.dart';
class AppBarMain extends StatelessWidget implements PreferredSizeWidget{
  const AppBarMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title: Row(
        children: [
          CircleAvatar(),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Programmer Raj", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),),
                Text("programmerraj@gmail.com", style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),),
              ],
            ),
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.logout_rounded,color: Colors.white,))


        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
