import 'package:flutter/material.dart';
import 'package:food_ordering/src/data/food_data.dart';
import 'package:food_ordering/src/scope_model/main_model.dart';
import 'package:food_ordering/src/screens/pages/favourite_page.dart';
import 'package:food_ordering/src/screens/pages/home_page.dart';
import 'package:food_ordering/src/screens/pages/order_page.dart';
import 'package:food_ordering/src/screens/pages/profile.dart';

import '../../scope_model/food_model.dart';

class MainScreen extends StatefulWidget {
  final MainModel mainModel;

  MainScreen({required this.mainModel});


  // Accept the food model

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  late List<Widget> pages;

  late Widget currentPage;

  late HomePage homePage;
  late Order orderPage;
  late Profile profilePage;
  late Explore explorePage;

  @override
  void initState() {
    // TODO: implement initState

    widget.mainModel.fetchFoods();

    // Call the fetch method on food
    widget.mainModel.fetchFoods();
    homePage = HomePage();
    orderPage = Order();
    profilePage = Profile();
    explorePage = Explore();

    pages = [homePage, explorePage, orderPage, profilePage];
    currentPage = homePage;

    super.initState();

  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          print('this is the index $index');
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        items: // List of navigation items (buttons)
         <BottomNavigationBarItem>[
           BottomNavigationBarItem(
               icon: Icon(Icons.home),
             label: 'Home',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.favorite),
             label: 'Explore',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart),
             label: 'Orders',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: 'Profile',
           ),
        ],
      ),
      body: currentPage,
      appBar: currentTabIndex == 2 ? AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Your Food Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ) : null,
    );
  }
}
