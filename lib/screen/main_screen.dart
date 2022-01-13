import 'package:app_food_delivery/data/food_data.dart';
import 'package:app_food_delivery/page/cart_page.dart';
import 'package:app_food_delivery/page/explore_page.dart';
import 'package:app_food_delivery/page/favorite_page.dart';
import 'package:app_food_delivery/page/home_page.dart';
import 'package:app_food_delivery/page/proflie_page.dart';
import 'package:app_food_delivery/scoped-model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import '../scoped-model/main_model.dart';
class MainScreen extends StatefulWidget {
  final MainModel model;
  MainScreen({required this.model});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int currentTabIndex = 0;
  
  late HomePage homePage;
  late CartPage cartPage;
  //late FavoritePage favoritePage;
  late ProfilePage profilePage;
  late ExplorePage explorePage;



  late List<Widget> pages;
  late Widget currentPage;

  @override
  void initState() {
    // TODO: implement initState
    widget.model.fetchFoods();
    homePage = HomePage(
      //foodModel: widget.model,
    );
    explorePage = ExplorePage();
    cartPage = CartPage();
    //favoritePage = FavoritePage();
    profilePage = ProfilePage();
    pages = [homePage, cartPage, explorePage, profilePage];
    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home), 
            label: "Trang chủ"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Giỏ hàng"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Khám phá"
          ),BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Tài khoản"
          ),
        ],
      ),
      body: currentPage,
    );
  }
}