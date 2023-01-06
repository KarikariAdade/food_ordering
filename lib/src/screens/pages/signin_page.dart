import 'package:flutter/material.dart';
import 'package:food_ordering/src/screens/pages/signup_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _toggleVisibility = true;

  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Your email or username',
        hintStyle: TextStyle(
          color: Color(0xFFBDC2CB),
          fontSize: 18.0,
        )
      ),
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Your Password',
          suffixIcon: IconButton(
            icon: _toggleVisibility ? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility_outlined), onPressed: () {
              setState(() {

                _toggleVisibility = !_toggleVisibility;
              });
          },
          ),
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          )
      ),
      obscureText: _toggleVisibility,

    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Sign In',
                style: TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('Forgotten Password?',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
              SizedBox(height: 10.0,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildEmailTextField(),
                      SizedBox(height: 20.0,),
                      _buildPasswordTextField(),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25.0)
                ),
                child: const Center(
                  child: Text('Sign In', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold))
                )
              ),
              Divider(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                      "Don't have an account?",
                    style: TextStyle(
                      color: Color(0XFFBDC2CB)
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpPage()));

                    },
                      child:
                      Text('Sign Up', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 19.0),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
