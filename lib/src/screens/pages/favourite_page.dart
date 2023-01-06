import 'package:flutter/material.dart';
import 'package:food_ordering/src/widgets/small_button.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
          child: Column(
            children: <Widget>[
              Text(
                  'All Food Items',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(0, 0.5),
                      color: Colors.black38
                    )
                  ]
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: 130.0,
                      height: 130.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/breakfast.jpeg', ),
                          fit: BoxFit.cover,
                        ),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: 220.0,
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('BreakFast', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
                            AutoSizeText(
                                'This is the description of the food item.This is the description of the food item.',
                              maxLines: 3,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                      '\u{20B5} 90.00',
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18.0),
                                  ),
                                  CustomButton(btnText: 'Edit')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
