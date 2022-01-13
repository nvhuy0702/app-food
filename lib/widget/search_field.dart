import 'package:flutter/material.dart';
class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            border: InputBorder.none,
            hintText: "Tìm kiếm món ăn",
            suffixIcon: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(30),
              child: Icon(
                Icons.search,
              ),
            )
          ),
        ),
      ),
    );
  }
}