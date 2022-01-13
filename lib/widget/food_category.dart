import 'package:app_food_delivery/data/category_data.dart';
import 'package:app_food_delivery/models/caterogy_model.dart';
import 'package:app_food_delivery/widget/food_card.dart';
import 'package:flutter/material.dart';
class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categoris;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index){
          return FoodCard(
            name: _categories[index].name,
            image: _categories[index].image,
            numberofItems: _categories[index].numberofItems,
          );
        },
   ),
    );
  }
}