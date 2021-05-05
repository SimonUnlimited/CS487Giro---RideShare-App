import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  User user;
  //final User user;

  Wallet(User user) {
    this.user = user;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Wallet"),
      ),
      body: Center(
        child: Container(
          child: Text('\$' + user.getWallet().toString(), style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}
