import 'package:flutter/material.dart';
class FoodCard extends StatelessWidget {
  late final String name;
  late final String image;
  late final int numberofItems;
  FoodCard({required this.image, required this.name, required this.numberofItems});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          children: [
            Image(
              image: AssetImage(image),
              height: 60,
              width: 60,
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Kích thước: $numberofItems',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
                ),
              )
                ],
              )
          ],
        ),
      ),
    );
  }
}