import 'package:flutter/material.dart';
class LocationCard extends StatelessWidget {
  String title;
  String subtitle;

  LocationCard(String title, String subtitle) {
    this.title = title;
    this.subtitle = subtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.location_pin),
        title: Text(title),
        subtitle: Text(subtitle),
      )
    );
  }
}
 