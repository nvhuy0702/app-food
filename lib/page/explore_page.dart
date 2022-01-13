import 'package:app_food_delivery/widget/small_btn.dart';
import 'package:flutter/material.dart';
class ExplorePage extends StatefulWidget {
  const ExplorePage({ Key? key }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
       child: Column(
         children: [
           Center(
             child: Text(
               'Tất cả sản phẩm',
               style: TextStyle(
                 color: Color(0xff086E7D),
                 fontSize: 25,
                 fontWeight: FontWeight.bold
               ),
             ),
           ),
           SizedBox(height: 10,),
           Container(
             padding: EdgeInsets.symmetric(vertical: 10),
             margin: EdgeInsets.all(10),
             width: MediaQuery.of(context).size.width,
             height: 120,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(10),
               boxShadow: [
                 BoxShadow(
                   blurRadius: 5,
                   offset: Offset(3,4),
                   color: Color(0xffFFF89A)
                 )
               ]
             ),
             child: Row(
            
             children: [
               Container(
                 margin: EdgeInsets.symmetric(horizontal: 10),
                 width: 100,
                 height: 100,
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("images/B.jfif"),
                     fit: BoxFit.cover
                   ),
                   borderRadius: BorderRadius.circular(10)
                 ),
               ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                 'Bữa sáng',
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                   color: Color(0xff1A5F7A)
                 ),
               ),
               SizedBox(height: 10,),
               Text(
                 'Giới thiệu về bữa sáng ở đây',
                 style: TextStyle(
                   fontSize:16,
                   fontWeight: FontWeight.w500,
                   color: Colors.grey 
                 ),
               ),
               SizedBox(height: 10,),
               Container(
                 width: 200,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text(
                       '50 000 vnđ',
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w700
                       ),
                     ),
                     SmallBtn(btnText: "Mua")
                   ],
                 ),
               )
                ],
              )
             ],
           ),
           ),
           
         ],
       ),
     ),
   );
  }
}