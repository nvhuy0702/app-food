import 'package:app_food_delivery/models/food_model.dart';
import 'package:app_food_delivery/scoped-model/main_model.dart';
import 'package:app_food_delivery/widget/btn.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
class AddFoodItems extends StatefulWidget {
  

  @override
  State<AddFoodItems> createState() => _AddFoodItemsState();
}

class _AddFoodItemsState extends State<AddFoodItems> {
  late String titleName;
  late String category;
  late String description;
  late String price;
  late String discount;
  late String id;
  late String image;

  GlobalKey<FormState> _foodItemFormKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: ListView(
          children: [
           Form(
             key: _foodItemFormKey,
             child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/no-pictures.png"),
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              _buildTextFormField("Tên bữa ăn"),
              _buildTextFormField("Category"),
              _buildTextFormField("Mô tả", maxLine: 5),
              _buildTextFormField("Giá"),
              _buildTextFormField("Giảm giá"),
              SizedBox(height: 80,),
              ScopedModelDescendant(builder: (context, child,MainModel model){
                return GestureDetector(
                onTap: (){
                  if(_foodItemFormKey.currentState!.validate()){
                    _foodItemFormKey.currentState?.save();
                    final Food food = Food(
                      category: category,
                      name: titleName,
                      price: price,
                      id: id,
                      image: image,
                      discount: double.parse(discount),
                    );
                    model.addFood(food);
                  }
                },
                child: Btn(name: "Thêm món ăn")
                );             
              })
            ],
          ), 
             )
          ],
        ),
      ),
    );
  }
  Widget _buildTextFormField(String hintText, {int maxLine = 1}){
  return TextFormField(
    decoration: InputDecoration(
      hintText: "$hintText"
    ),
    maxLines: maxLine,
    keyboardType: hintText == "Giá" || hintText == "Giảm giá"? TextInputType.number:TextInputType.text,
    onChanged: (String value){
      if(hintText == "Tên bữa ăn"){
        titleName = value;
      }
      if(hintText == "Category"){
        category = value;
      }
      if(hintText == "Mô tả"){
        description = value;
      }
      if(hintText == "Giá"){
        price = value;
      }
      if(hintText == "Giảm giá"){
        discount = value;
      }
    },
  );
}
}
