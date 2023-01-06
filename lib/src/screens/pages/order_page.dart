import 'package:flutter/material.dart';
import 'package:food_ordering/src/widgets/order_card.dart';
import 'package:food_ordering/src/screens/pages/signin_page.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  OrderCard(),
                  OrderCard(),
                  OrderCard(),
                ],
              ),
            ),
            _buildTotalContainer()
          ],
        ),
    );
  }

  Widget _buildTotalContainer(){
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Cart Total', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text('20.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Discount', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text('0.5', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Tax', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text('3.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text('Subtotal', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.grey),),
                Text('20.0', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => SignInPage()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Center(
                child: Text('Proceed to Checkout', style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
