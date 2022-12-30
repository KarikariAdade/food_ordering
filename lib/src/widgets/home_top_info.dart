import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
   HomeTopInfo({Key? key}) : super(key: key);

  final defaultStyle = TextStyle(fontSize: 32.0,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                  'What would',
                  style: defaultStyle
              ),
              Text(
                'you like to eat?',
                style: defaultStyle,
              ),
            ],
          ),
          Icon(
            Icons.notifications,
            size: 40.0,
          )
        ],
      ),
    );
  }
}
