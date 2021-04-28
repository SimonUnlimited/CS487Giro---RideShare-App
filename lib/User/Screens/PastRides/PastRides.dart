import 'package:flutter/material.dart';
import '../../widgets/Cards/LocationCard.dart';

class PastRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Past Rides"),
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