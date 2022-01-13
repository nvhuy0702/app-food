import 'package:app_food_delivery/screen/signup_screen.dart';
import 'package:flutter/material.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}



class _SignInScreenState extends State<SignInScreen> {
  Widget _buildGmailTextField(){
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
        hintText: "Nhập gmail của bạn",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18
        )
      ),
    ),
  );
}
Widget _buildPasswordTextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Nhập mật ",
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 18
      ),
      suffixIcon: IconButton(
        onPressed:(){
          setState(() {
            _abc = !_abc;
          });
        } , 
        icon:_abc? Icon(
          Icons.visibility_off,
        ):Icon(Icons.visibility),
        ),
    ),
    obscureText: _abc,
  );
}
  bool _abc = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Đăng nhập',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xff086E7D)
              ),
            ),
            SizedBox(height: 60,),
            Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                   _buildGmailTextField(),
                    _buildPasswordTextField()
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff086E7D)
              ),
              child: Center(
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Quên mật khẩu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.blue
              ),
            ),
            SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(left:70,top: 10),
               child: Row(
                 children: [
                   Text(
                     'Bạn có tài khoản chưa ?',
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 17,
                     ),
                   ),
                   GestureDetector(
                     onTap: (){
                       Navigator.of(context).push(
                         MaterialPageRoute(builder:(ctx) => SignUpScreen())
                       );
                     },
                     child: Text(
                       'Đăng ký',
                       style: TextStyle(
                         fontSize: 18,
                         color: Colors.blue
                       ),
                     ),
                   )
                 ],
               ),
             )
          ],
        ),
      ),
    );
  }
}