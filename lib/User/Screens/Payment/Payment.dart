import 'package:flutter/material.dart';
import '../../widgets/Payment/CardInputForm.dart';
import '../../widgets/Payment/CardType.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          CardType(),
          CardInputForm()
        ],
      ),
      ),
    );
  }
}
