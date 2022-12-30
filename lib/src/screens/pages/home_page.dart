import 'package:flutter/material.dart';
import 'package:food_ordering/src/widgets/bought_foods.dart';
import 'package:food_ordering/src/widgets/food_category.dart';
import 'package:food_ordering/src/widgets/home_top_info.dart';
import 'package:food_ordering/src/widgets/search_field.dart';

import 'package:food_ordering/src/data/food_data.dart';
import 'package:food_ordering/src/models/food_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          children: <Widget>[
            HomeTopInfo(),
            FoodCategory(),
            SearchField(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Frequently Bought Foods',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Column(
                children: foods.map(_buildFoodItems).toList()
            )
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
          food.id,
          food.name,
          food.imagePath,
          food.category,
          food.price,
          food.discount,
          food.ratings
      ),
    );
  }
}
