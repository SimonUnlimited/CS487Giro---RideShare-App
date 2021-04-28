import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.star),
      title: Text(title),
      subtitle: Text(subtitle),
    ));
  }
}
