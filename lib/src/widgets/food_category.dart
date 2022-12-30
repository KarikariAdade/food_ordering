import 'package:flutter/material.dart';
import 'package:food_ordering/src/widgets/food_card.dart';

import '../models/category_model.dart';
import '../data/category_data.dart';

class FoodCategory extends StatelessWidget {
  FoodCategory({Key? key}) : super(key: key);

  final List<Category> _categories = categories; // Assign category model to categories from category_data

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index){
            return FoodCard(
              _categories[index].categoryName,
              _categories[index].imagePath,
              _categories[index].numberofItems.toString()
            );
          }
      ),
    );
  }
}
