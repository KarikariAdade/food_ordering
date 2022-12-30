import 'package:flutter/material.dart';
import 'package:food_ordering/src/screens/pages/main_screen.dart';

import 'homescreen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food Delivery App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
