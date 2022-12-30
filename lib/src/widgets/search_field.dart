import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  SearchField ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search any food',
            suffixIcon: Material(
              elevation: 4.9,
              borderRadius: BorderRadius.circular(30.0),
              child: Icon(
                  Icons.search,
                  color: Colors.black
              ),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 18.0),
          ),
        ),
      ),
    );
  }
}
