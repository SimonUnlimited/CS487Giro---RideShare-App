
import 'package:Giro/Driver/Models/Driver.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  Driver driver;
  //final User user;

  Wallet(Driver driver) {
    this.driver = driver;
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
          child: Text('\$' + driver.getWallet().toString(), style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}