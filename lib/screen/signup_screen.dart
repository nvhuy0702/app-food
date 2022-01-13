import 'package:app_food_delivery/screen/sigin_screen.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget _buildUserTextField(){
  return Container(
    child: TextFormField(
      decoration: InputDecoration(
        hintText: "Nhập tên của bạn",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18
        )
      ),
    ),
  );
}
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
      hintText: "Nhập mật khẩu ",
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
Widget _buildPassword1TextField(){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "Nhập lại mật khẩu ",
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 18
      ),
      suffixIcon: IconButton(
        onPressed:(){
          setState(() {
            _xyz = !_xyz;
          });
        } , 
        icon:_xyz? Icon(
          Icons.visibility_off,
        ):Icon(Icons.visibility),
        ),
    ),
    obscureText: _abc,
  );
}
  bool _abc = true;
  bool _xyz = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Đăng ký',
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
                    _buildUserTextField(),
                   _buildGmailTextField(),
                    _buildPasswordTextField(),
                    _buildPassword1TextField()
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
                  'Đăng ký',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),

            SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(left:70,top: 10),
               child: Row(
                 children: [
                   Text(
                     'Bạn đã có tài khoản !',
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 17,
                     ),
                   ),
                   SizedBox(width: 5,),
                   GestureDetector(
                     onTap: (){
                       Navigator.of(context).push(
                         MaterialPageRoute(builder: (ctx) => SignInScreen())
                       );
                     },
                     child: Text(
                       'Đăng nhập',
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