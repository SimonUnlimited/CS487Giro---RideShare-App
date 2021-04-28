import 'package:flutter/material.dart';
import '../../widgets/Cards/CarCard.dart';
import '../../widgets/Cards/FavoriteCard.dart';
import '../../widgets/Cards/LocationCard.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Favorites"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          LocationCard('Ride 1', '3349 S Wabash Avenue, Laurent'),
          LocationCard('Ride 1', '3349 S Wabash Avenue, Laurent'),
          LocationCard('Ride 1', '3349 S Wabash Avenue, Laurent'),
          LocationCard('Ride 1', '3349 S Wabash Avenue, Laurent'),
          LocationCard('Ride 1', '3349 S Wabash Avenue, Laurent'),
        ]),
      ),
    );
  }
}
