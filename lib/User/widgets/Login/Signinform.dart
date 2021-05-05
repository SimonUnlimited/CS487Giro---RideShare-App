import 'package:Giro/User/Screens/HomePage.dart';
import 'package:Giro/User/Screens/Login/Signup.dart';
import 'package:flutter/material.dart';
import '../../../Driver/Screens/HomePage/DriverHomePage.dart';
import '../../../Data.dart';

class Signinform extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();
  String userType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:100),
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com'),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter secure password'),
            ),
          ),
          FlatButton(
            onPressed: () {
              //TODO FORGOT PASSWORD SCREEN GOES HERE
            },
            child: Text(
              'Forgot Password',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            margin: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                switch (userType) {
                  case "User":
                    for (int i = 0; i < users.length; i++) {
                      if (users[i].userId == email.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => HomePage(users[i])));
                      }
                    }
                    break;
                  case "Driver":
                    for (int i = 0; i < drivers.length; i++) {
                      if (drivers[i].userId == email.text) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DriverHomePage(drivers[i])));
                      }
                    }
                }
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Signup()));
            },
            child: Text(
              'New User? Create User',
              style: TextStyle(color: Colors.blue, fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    userType = "Driver";
                  },
                  child: Text(
                    'Driver',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: FlatButton(
                  onPressed: () {
                    userType = "User";
                  },
                  child: Text(
                    'User',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
