import 'dart:convert';
import 'dart:ffi';
import 'dart:ui';

import 'package:scoped_model/scoped_model.dart';

import '../models/food_model.dart';
import 'package:http/http.dart' as http;


mixin FoodModel implements Model {

  var apiUrl = 'http://10.0.2.2:8000';

  List<Food> _foods = [];

  List<Food> get foods{
    return List.from(_foods); // Returns a copy of foods list
  }

  void addFood(Food food) {
    _foods.add(food);
  }

 void fetchFoods() {
    http.get(Uri.parse('$apiUrl/api/foods')).then((http.Response response) {
      Map map = json.decode(response.body);
      // List fetchedData = map['data'];
      final List<Food> fetchedFoodItems = [];
      jsonDecode(map['data']).forEach((foodData) {

        Food food = Food(
          foodData['id'],
          foodData['name'],
          foodData['image_path'] ,
          foodData['category_id'],
          foodData['price'],
          foodData['discount'],
          foodData['ratings'] ?? null,
        );

        _foods.add(food);

        fetchedFoodItems.add(food);
      });

      _foods = fetchedFoodItems; // Assign items to global variables food
      // print('Fetching data:  ${json.decode(map['data'])}');
    });

    print('FOODS DATA TOTAL $_foods');
  }

}