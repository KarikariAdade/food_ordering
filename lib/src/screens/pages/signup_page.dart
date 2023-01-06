import 'package:flutter/material.dart';
import 'package:food_ordering/src/screens/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  bool _toggleVisibility = true;

  Widget _buildUsernameTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: TextStyle(
            color: Color(0xFFBDC2CB),
            fontSize: 18.0,
          )
      ),
    );
  }
  Widget _buildEmailTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Email',
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
  Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Confirm Password',
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
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              const Text('Sign Up',
                style: TextStyle(
                    fontSize: 40.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20.0,),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      _buildUsernameTextField(),
                      SizedBox(height: 20.0),
                      _buildEmailTextField(),
                      SizedBox(height: 20.0,),
                      _buildPasswordTextField(),
                      SizedBox(height: 20.0,),
                      _buildConfirmPasswordTextField()
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
                      child: Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold))
                  )
              ),
              Divider(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Color(0XFFBDC2CB)
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context)=> SignInPage()));
                    },
                      child: Text('Sign In', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 19.0),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
