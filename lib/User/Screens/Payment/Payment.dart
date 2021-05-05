import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/Payment/CardInputForm.dart';
import '../../widgets/Payment/CardType.dart';

class Payment extends StatelessWidget {
  User user;
  //final User user;

  Payment(User user) {
    this.user = user;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Payment"),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          CardType(user),
          CardInputForm(user)
        ],
      ),
      ),
    );
  }
}
