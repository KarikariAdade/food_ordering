import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75.0,
              width: 45.0,
              decoration: BoxDecoration(
                border: Border.all(width: 2.0, color: Color(0xFFD3D3D3)),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                      child: Icon(Icons.keyboard_arrow_up, color: Color(0xFFD3D3D3),)
                  ),
                  Text(
                      '0',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Icon(Icons.keyboard_arrow_down, color: Color(0xFFD3D3D3))
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/lunch.jpeg'),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 5.0)
                  )
                ]
              ),
            ),
            SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Grilled Chicken',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 5.0,),
                Text(
                    '3.0',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 16.0
                  ),
                ),
                SizedBox(height: 5.0,),
                Container(
                  height: 35.0,
                  width: 120.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Text('Chicken', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                            SizedBox(width: 5.0),
                            InkWell(
                              onTap: (){},
                                child: Text(
                                  'x',
                                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            GestureDetector(
              onTap: (){},
              child: Icon(
                Icons.cancel,
                color: Colors.grey
              ),
            )
          ],
        ),
      ),
    );
  }
}
