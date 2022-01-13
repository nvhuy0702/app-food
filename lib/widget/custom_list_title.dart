import 'package:flutter/material.dart';
class CustomListTitle extends StatelessWidget {
  late final IconData icon;
  late final String name;
  CustomListTitle({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: Color(0xff086E7D),
          ),
          SizedBox(width: 15,),
          Text(
            '$name',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600
            ),
          )
        ],
      )
    );
  }
}