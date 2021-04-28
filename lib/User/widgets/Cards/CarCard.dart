import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.car_repair),
      title: Text(title),
      subtitle: Text(subtitle),
    ));
  }
}
