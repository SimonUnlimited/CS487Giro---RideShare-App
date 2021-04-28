import 'package:flutter/material.dart';
import '../../widgets/Profile/ProfileBody.dart';
import '../../widgets/Profile/profile.dart';
import '../../widgets/Profile/profileHeader.dart';

class Profile extends StatelessWidget {
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
              ProfileHeader('Joh Doe'),
              ProfileBody('lkapesa@hawk.iit.edu', '6162649500', '123456789'),
              
            ],
          ),
        )));
  }
}
