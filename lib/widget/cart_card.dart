import 'package:flutter/material.dart';
class CartPageCard extends StatelessWidget {
  const CartPageCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Breakfast2.jfif"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-2,4),
                    blurRadius: 5,
                    color: Colors.grey
                  )
                ]
              ),
            ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height: 35,
                 width: 90,
                 decoration: BoxDecoration(
                   border: Border.all(width: 2, color: Colors.grey),
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                          GestureDetector(
                      onTap: (){},
                      child: Icon(
                        Icons.remove,
                        size: 20,
                      ),
                ),
                Text(
                      '2'
                ),
                GestureDetector(
                      onTap: (){},
                      child: Icon(
                        Icons.add,
                        size: 20,
                      ),
                ),
                       ],
                     ),

               ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Bữa sáng 1',
                       style: TextStyle(
                         fontSize: 20,
                         color: Color(0xff086E7D),
                         fontWeight: FontWeight.bold
                       ),
                     ),
                     Text(
                       '4.0',
                       style: TextStyle(
                         fontSize: 18,
                         fontWeight: FontWeight.w500,
                         color: Color(0xffFFC900)
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(right: 10),
                       height: 20,
                       width: 100,
                       child: Row(
                       children: [
                         Text(
                           'Trứng',
                           style: TextStyle(
                             fontSize: 18,
                             fontWeight: FontWeight.w400,
                             color: Colors.grey
                           ),
                         ),
                         SizedBox(width: 7,),
                         InkWell(
                           onTap: (){},
                           child: Text(
                             'x',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                               color: Colors.red
                             ),
                           ),
                         )
                       ],
                     ),
                     )
                   ],
                 )
             ],
           ),
           GestureDetector(
             onTap: (){},
             child: Icon(
               Icons.cancel,
               color: Colors.grey,
             ),
           )
          ],
        ),
      ),
    );
  }
}