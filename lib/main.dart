import 'package:app_food_delivery/admin/add_food.dart';
import 'package:app_food_delivery/page/cart_page.dart';
import 'package:app_food_delivery/page/home_page.dart';
import 'package:app_food_delivery/scoped-model/food_model.dart';
import 'package:app_food_delivery/scoped-model/main_model.dart';
import 'package:app_food_delivery/screen/home_screen.dart';
import 'package:app_food_delivery/screen/main_screen.dart';
import 'package:app_food_delivery/screen/sigin_screen.dart';
import 'package:app_food_delivery/widget/food_card.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 final MainModel mainModel = MainModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel, 
      child: MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(model: mainModel,),
      //home: HomePage(),
      )
    );
  }
}

