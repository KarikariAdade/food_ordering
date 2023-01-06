import 'package:flutter/material.dart';
import 'package:food_ordering/src/scope_model/food_model.dart';
import 'package:food_ordering/src/scope_model/main_model.dart';
import 'package:food_ordering/src/widgets/bought_foods.dart';
import 'package:food_ordering/src/widgets/food_category.dart';
import 'package:food_ordering/src/widgets/home_top_info.dart';
import 'package:food_ordering/src/widgets/search_field.dart';

import 'package:food_ordering/src/data/food_data.dart';
import 'package:food_ordering/src/models/food_model.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    super.initState();
  }


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
            ScopedModelDescendant<MainModel>(
              builder: (context, child, MainModel model) => Column(
                      children: model.foods.map(_buildFoodItems).toList()
                ),
            ),

      //       ScopedModelDescendant(BuildContext context, Widget child, Model model){
      //       return Column(
      //       children: widget.foodModel.foods.map(_buildFoodItems).toList()
      // );
      //       }
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
          food.id.toString(),
          food.name,
          food.imagePath,
          food.category.toString(),
          food.price,
          food.discount,
          food.ratings
      ),
    );
  }
}
