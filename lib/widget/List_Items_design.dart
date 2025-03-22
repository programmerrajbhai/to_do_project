import 'package:flutter/material.dart';
class ListItems extends StatelessWidget {
  const ListItems({
    super.key, required this.status, required this.colors,
  });

  final String status;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Here is Our Title to be Define",
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Text(
              'In this episode, we will add Social Media Style Like, Comment, and Share icons in the News Post desig'),
          Text(
            'Date: 02/04.2025',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 10),
          ),
          SizedBox(height: 10,),

          Row(
            children: [
              Card(
                color: colors,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 2
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        status,
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red,                        ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
