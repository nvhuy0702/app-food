import 'package:app_food_delivery/data/food_data.dart';
import 'package:app_food_delivery/models/food_model.dart';
import 'package:app_food_delivery/scoped-model/food_model.dart';
import 'package:app_food_delivery/scoped-model/main_model.dart';
import 'package:app_food_delivery/widget/bought_food.dart';
import 'package:app_food_delivery/widget/food_category.dart';
import 'package:app_food_delivery/widget/search_field.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {
  //final FoodModel foodModel;
 // HomePage({required this.foodModel});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   //List<Food> _foods = foods;
   @override
   void initState(){
     //widget.foodModel.fetchFoods();
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, top: 35),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Bạn muốn ăn gì ?',
                       style: TextStyle(
                         fontSize: 30,
                         fontWeight: FontWeight.bold
                       ),
                    ),
                  ],
                ),
                Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: Color(0xff1A5F7A),
                )
              ],
            ),
          ),
          FoodCategory(),
          SearchField(),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Món ăn đang hot',
                  style: TextStyle(
                    fontSize:25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'Xem tất cả',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFFC900)
                    ),
                  ),
                )
              ],
            ),
          ),
          ScopedModelDescendant<MainModel>(
            builder:(context, child, MainModel model){
              return Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Column(
              children: 
                model.foods.map(_buildFoodItems).toList(),
            ),
            );
            } 
            )
        ],
      ),
    );
  }
  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: BoughtFood(
        id: food.id,
        name: food.name,
        image: food.image,
        category: food.category,
        //ratings: food.ratings,
        price: food.price,
      ),
    );
  }
}