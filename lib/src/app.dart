import 'package:flutter/material.dart';
import 'package:food_ordering/src/scope_model/food_model.dart';
import 'package:food_ordering/src/scope_model/main_model.dart';
import 'package:food_ordering/src/screens/pages/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'admin/pages/add_food_item.dart';
import 'homescreen.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  // Create an instance of the Food scope model

  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
        model: mainModel,
        child: MaterialApp(
          title: "Food Delivery App",
          theme: ThemeData(
            primaryColor: Colors.blueAccent,
          ),
          debugShowCheckedModeBanner: false,
          // home: MainScreen(mainModel: mainModel),
          home: AddFoodItem(),
        )
    );
  }
}
