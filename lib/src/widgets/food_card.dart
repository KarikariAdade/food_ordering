import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {


  final String categoryName;
  final String imagePath;
  final String numberOfItems;

  FoodCard(this.categoryName, this.imagePath, this.numberOfItems);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 3.0),
          child: Row(
            children: <Widget>[
              Image(
                  image: AssetImage(imagePath),
                height: 75.0,
                width: 55.0,
              ),
              SizedBox(width: 20.0,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      categoryName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                  Text(numberOfItems + ' kinds')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
