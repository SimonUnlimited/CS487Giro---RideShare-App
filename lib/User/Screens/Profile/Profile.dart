import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/Profile/ProfileBody.dart';
import '../../widgets/Profile/profile.dart';
import '../../widgets/Profile/profileHeader.dart';

class Profile extends StatelessWidget {
  User user;
  //final User user;

  Profile(User user) {
    this.user = user;
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
              ProfileHeader(user),
              ProfileBody(user),
              
            ],
          ),
        )));
  }
}
