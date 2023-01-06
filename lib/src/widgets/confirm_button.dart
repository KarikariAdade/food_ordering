import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  late final buttonText;

  ConfirmButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
              blurRadius: 5.0,
              offset: Offset(0, 4.0),
              color: Colors.black38
          )
        ],
      ),
      child: Center(
        child: Text(
          '$buttonText',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
