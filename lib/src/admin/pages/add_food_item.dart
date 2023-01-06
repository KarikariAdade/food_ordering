import 'package:flutter/material.dart';

import '../../widgets/confirm_button.dart';

class AddFoodItem extends StatefulWidget {
  const AddFoodItem({Key? key}) : super(key: key);

  @override
  State<AddFoodItem> createState() => _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 16.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Form(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    width: MediaQuery.of(context).size.width,
                    height: 170.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  buildTextFormField('Food Title'),
                  SizedBox(height: 10.0,),
                  buildTextFormField('Category'),
                  SizedBox(height: 10.0,),
                  buildTextFormField('Price'),
                  SizedBox(height: 10.0,),
                  buildTextFormField('Discount'),
                  SizedBox(height: 10.0,),
                  buildTextFormField('Description', maxLine: 4),
                  SizedBox(height: 20.0,),
                  GestureDetector(
                    onTap: (){
                      print('hello');
                    },
                    child: ConfirmButton(buttonText: "Submit Food Item"),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Use curly bracket for optional named parameters

  Widget buildTextFormField(String hintText, {int maxLine = 1}){
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText
      ),
      maxLines: maxLine,
      keyboardType: hintText == 'Price' || hintText == 'Discount' ? TextInputType.number : TextInputType.text,
    );
  }
}
