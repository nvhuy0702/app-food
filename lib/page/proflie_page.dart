import 'package:app_food_delivery/widget/custom_list_title.dart';
import 'package:app_food_delivery/widget/small_btn.dart';
import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool turnNotification = true;
  bool turnLocation = true;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hồ sơ',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("images/Breakfast1.jfif"),
                        fit: BoxFit.cover
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1,4),
                          blurRadius: 4,
                          color: Colors.grey
                        )
                      ]
                    ),
                  ),
                  SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nguyen Van Huy',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      '1234567890',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                   SmallBtn(btnText: "Chỉnh sửa"),
                  ],
                )
                ],
              ),
              SizedBox(height: 10,),
              Text(
                'Tài khoản',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      CustomListTitle(
                        icon:Icons.location_on , 
                        name: "Vị trí"
                        ),
                        Divider(
                          height: 12,
                          color: Colors.grey,
                        ),
                         CustomListTitle(
                        icon:Icons.lock , 
                        name: "Thay đổi mật khẩu"
                        ),
                        Divider(
                          height: 13,
                          color: Colors.grey,
                        ),
                         CustomListTitle(
                        icon:Icons.shopping_cart , 
                        name: "Vận chuyển"
                        ),
                        Divider(
                          height: 12,
                          color: Colors.grey,
                        ),
                         CustomListTitle(
                        icon:Icons.payment , 
                        name: "Thanh toán"
                        ),
                        Divider(
                          height: 11,
                          color: Colors.grey,
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Thông báo',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Thông báo',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff086E7D)
                           ),
                          ),
                          Switch(
                            value: turnNotification,
                             onChanged: (bool value){
                               setState(() {
                                 turnNotification = value;
                               });
                             }
                             )
                        ],
                      ),
                       Divider(
                          height: 10,
                          color: Colors.grey,
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bật tắt vị trí',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff086E7D)
                           ),
                          ),
                          Switch(
                            value: turnLocation,
                             onChanged: (bool value){
                               setState(() {
                                 turnLocation = value;
                               });
                             }
                             )
                        ],
                      )
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10,),
              Text(
                'Khác',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      children: [
                         Text(
                                'Ngôn ngữ',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff086E7D)
                               ),
                              ),
                               
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}