import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/User/Screens/Login/Login.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../../Data.dart';

class Signupform extends StatefulWidget {
  @override
  _SignupformState createState() => _SignupformState();
}

class _SignupformState extends State<Signupform> {
  final first = TextEditingController();
  final last = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final pass = TextEditingController();
  final paymentInfo = TextEditingController();
  final location = TextEditingController();
  bool userExists = false;

  updated(bool userExists) {
    userExists = true;
    setState(() {});
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    first.dispose();
    last.dispose();
    email.dispose();
    phone.dispose();
    pass.dispose();
    paymentInfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context, String msg) {
      // set up the button
      Widget okButton = FlatButton(
        child: Text("OK"),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Text(msg),
        content: Text("Use a different Email"),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    String userType = "";

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: first,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: last,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Email Address'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  hintText: 'XXX-XXX-XXXX'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
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
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: location,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Location',
                  hintText: 'Enter Address'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 20),
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: paymentInfo,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Payment Info',
                  hintText: 'Card'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                switch (userType) {
                  case "Driver":
                    if (checkIfDriverExists(email.text)) {
                      updated(userExists);
                      showAlertDialog(context, "User Already Exists");
                    } else {
                      drivers.add(Driver(
                          email.text,
                          first.text,
                          last.text,
                          email.text,
                          phone.text,
                          pass.text,
                          200,
                          paymentInfo.text));
                          Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    }
                    break;
                  case "User":
                    if (checkIfUserExists(email.text)) {
                      updated(userExists);
                      showAlertDialog(context, "User Already Exists");
                    } else {
                      users.add(User(
                          email.text,
                          first.text,
                          last.text,
                          email.text,
                          phone.text,
                          pass.text,
                          200,
                          paymentInfo.text,
                          location.text,
                          location.text, []));
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    }
                    break;
                }
              },
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 20),
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
                margin: EdgeInsets.only(top: 10),
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
          ),
        ],
      ),
    );
  }
}
