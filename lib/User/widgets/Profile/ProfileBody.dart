import 'package:flutter/material.dart';
import '../../Screens/Profile/EditProfile.dart';

class ProfileBody extends StatelessWidget {
  String email;
  String phone;
  String paymentInfo;

  ProfileBody(String email, String phone, String paymentInfo) {
    this.phone = phone;
    this.email = email;
    this.paymentInfo = paymentInfo;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('Email'),
              subtitle: Text(email),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Phone'),
              subtitle: Text(phone),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Payment Info'),
              subtitle: Text(paymentInfo),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            margin: EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => EditProfile()));
              },
              child: Text(
                'Edit Profile',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
