import 'package:Giro/Driver/Models/Driver.dart';
import 'package:flutter/material.dart';
import '../../Screens/Profile/EditProfile.dart';

class ProfileBody extends StatelessWidget {
  Driver user;
  //final User user;

  ProfileBody(Driver user) {
    this.user = user;
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
              subtitle: Text(user.email),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Phone'),
              subtitle: Text(user.phoneNumber),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Payment Info'),
              subtitle: Text(user.getPaymentInfo()),
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
                    context, MaterialPageRoute(builder: (_) => EditProfile(user)));
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
