import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/Driver/Widgtes/Profile/ProfileBody.dart';
import 'package:flutter/material.dart';
import '../../widgtes/Profile/profileHeader.dart';

class Profile extends StatelessWidget {
  Driver driver;
  //final User user;

  Profile(Driver driver) {
    this.driver = driver;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: [
              ProfileHeader(driver),
              ProfileBody(driver),
            ],
          ),
        )));
  }
}
