import 'package:flutter/material.dart';
class BoughtFood extends StatefulWidget {
  late final String id;
  late final String name;
  late final String image;
  late final String category;
  late final String price;

  //late final double ratings;
  BoughtFood({
    required this.image,
    required this.name,
    required this.category,
    required this.id,
    required this.price,
    //required this.ratings
  });  

  @override
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFood> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: 300,
            width: 400,
            child: Image.asset(widget.image, fit: BoxFit.cover,)
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60,
              width:400,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                   Row(
                     children: [
                        Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent
                    ),
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.yellowAccent
                    ),
                    Text(
                     // "("+ widget.ratings.toString() + "nhận xét)",
                     "99",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400
                      ),
                    )
                     ],
                   )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Giá order: ',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                    Text(
                      widget.price.toString(),
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}