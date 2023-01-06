import 'package:flutter/material.dart';
import 'package:food_ordering/src/screens/pages/profile_account_card.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool light = true;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    'Profile',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 120.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60.0),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(0, 4.0),
                            color: Colors.black38
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage('assets/images/breakfast.jpeg',),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                            'Karikari Adade',
                          style: TextStyle(fontSize: 17.0),
                        ),
                        SizedBox(height: 10.0,),
                        Text('0548876922', style: TextStyle(fontSize: 17.0, color: Colors.grey),),
                        SizedBox(height: 10.0,),
                        Container(
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
                              'Edit',
                              style: TextStyle(color: Colors.blue, fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // child: ,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20.0,),
                Text(
                    'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                ProfileAccountCard(),
                SizedBox(height: 20.0,),
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 10.0,),
                Card(
                  elevation: 5.0,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('App Notifications', style: TextStyle(fontSize: 16.0),),
                            Switch(
                              value: light,
                              activeColor: Colors.blue,
                              onChanged: (bool value){
                                setState(() {
                                  light = value;
                                  print('value $value');
                                });
                              }

                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Location Tracking', style: TextStyle(fontSize: 16.0),),
                            Switch(
                              value: light,
                              activeColor: Colors.blue,
                              onChanged: (bool value){
                                setState(() {
                                  light = value;
                                  print('value $value');
                                });
                              }

                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}
