import 'package:app_food_delivery/screen/sigin_screen.dart';
import 'package:app_food_delivery/widget/cart_card.dart';
import 'package:flutter/material.dart';
class CartPage extends StatefulWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Món ăn của bạn',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10  ),
        scrollDirection: Axis.vertical,
        children: [
          CartPageCard(),
          CartPageCard(),
        ],
      ),
      bottomNavigationBar: _buildTotal(context),
    );
  }
}

Widget _buildTotal(BuildContext context){
  return Container(
    height: 240,
    margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tổng hóa đơn',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      '60 000 vnđ',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Số lượng',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 77),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                  SizedBox(height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Giảm giá',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:65),
                      child: Text(
                        '3%',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                Divider(height: 30, color: Colors.grey.shade800,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tổng',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                   
                      
                       Text(
                        '50 000 vnđ',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    
                  ],
                ),
                SizedBox(height: 20,),
             Container(
               margin: EdgeInsets.only(top: 10),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Color(0xff086E7D),
                borderRadius: BorderRadius.circular(25),
              ),
                child: Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => SignInScreen() )
                      );
                    },
                    child: Text(
                      'Tiếp tục Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              
            ),

              ],
            ),
          );
          
}