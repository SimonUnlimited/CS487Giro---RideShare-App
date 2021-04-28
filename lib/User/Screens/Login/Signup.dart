import 'package:Giro/User/widgets/Login/Signupform.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

class Signup extends StatefulWidget {
  static const routeName = '/signup';
  
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Signupform()
    );
  }
}