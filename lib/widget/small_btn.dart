import 'package:flutter/material.dart';
class SmallBtn extends StatelessWidget {
  late final String btnText;
  SmallBtn({required this.btnText});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffFFC900)
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          '$btnText',
                          style: TextStyle(
                            color: Color(0xff086E7D),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    );
  }
}