import 'package:flutter/material.dart';

class ProfileAccountCard extends StatefulWidget {
  const ProfileAccountCard({Key? key}) : super(key: key);

  @override
  State<ProfileAccountCard> createState() => _ProfileAccountCardState();
}

class _ProfileAccountCardState extends State<ProfileAccountCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.location_on_outlined, color: Colors.blue,),
                  SizedBox(width: 15.0,),
                  Text('Location', style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.shopping_bag_outlined, color: Colors.blue),
                  SizedBox(width: 15.0,),
                  Text('Shipping', style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.lock_open, color: Colors.blue),
                  SizedBox(width: 15.0,),
                  Text('Change Password', style: TextStyle(fontSize: 16.0),)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.payment_outlined, color: Colors.blue),
                  SizedBox(width: 15.0,),
                  Text('Payments', style: TextStyle(fontSize: 16.0),)
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
