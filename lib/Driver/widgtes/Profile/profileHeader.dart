import 'package:Giro/Driver/Models/Driver.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileHeader extends StatelessWidget {
  Driver user;
  //final User user;

  ProfileHeader(Driver user) {
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      alignment: Alignment.center,
      color: Colors.black,
      padding: EdgeInsets.only(top: 30),
      child: Column(children: [
        Icon(Icons.supervised_user_circle, size: 50, color: Colors.white,),
        Text(user.firstName, style: TextStyle(color: Colors.white, fontSize: 30),),
        
        
      ],)
    );
  }
}