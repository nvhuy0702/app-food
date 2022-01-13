import 'dart:convert';

import 'package:app_food_delivery/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:app_food_delivery/models/food_model.dart';
import 'package:http/http.dart' as http;
class FoodModel extends Model {
  List<Food> _food = [];
  List<Food> get foods{
    return List.from(_food);
  }
  void addFood(Food food) async {
    //_food.add(food);
    final Map<String, dynamic> foodData = {
      "titleName" : food.name,
      "category" : food.category,
      "price" : food.price,
      "discount": food.discount,
      "id" : food.id,
      "image" : food.image,
    };
    final http.Response response = await http.post(Uri.parse("https://appfood-504f0-default-rtdb.firebaseio.com/foods.json"),body: json.encode(foodData));
    print(response);
  }
  void fetchFoods(){
     http
    .get(Uri.parse("http://192.168.1.4/food_app/api/foods/getfood.php"))
    .then((http.Response reponse){
      final List fetchedFoods = json.decode(reponse.body);
      final List<Food> fetchedFoodsItems = []; 
      //print(fetchedFoods);
      fetchedFoods.forEach((data) {
        Food food = Food(
          id: data["id"],
          image: data["image"],
          category: data?["category"]??"",
          price: data["price"],
          discount: double.parse(data["discount"]),
          name: data["title"]??"",
          //ratings: double.parse(data["ratings"]),
        );
        fetchedFoodsItems.add(food);
       });
       _food = fetchedFoodsItems;
       print(_food);
    });    
    }
      
  
  
}