import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late final String btnText;

  CustomButton({required this.btnText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 60.0,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          '$btnText',
          style: TextStyle(color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
      // child: ,
    );
  }
}
