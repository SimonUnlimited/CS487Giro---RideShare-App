import 'package:flutter/material.dart';

class CarCard extends StatelessWidget {
  String title;
  String subtitle;

  CarCard(String title, String subtitle) {
    this.title = title;
    this.subtitle = subtitle;
  }
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
