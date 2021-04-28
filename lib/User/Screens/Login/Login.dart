import 'package:flutter/material.dart';
import '../HomePage.dart';
import 'Signup.dart';
import '../../widgets/Login/Signinform.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Signinform()
    );
  }
}
