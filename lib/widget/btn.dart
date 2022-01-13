import 'package:flutter/material.dart';
class Btn extends StatelessWidget {
  late String name;
  Btn({required this.name});
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff086E7D)
              ),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              );
  }
}