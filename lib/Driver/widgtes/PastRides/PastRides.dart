import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/User/widgets/Cards/LocationCard.dart';
import 'package:flutter/material.dart';

import '../../../Data.dart';


class PastRides extends StatelessWidget {
  Driver user;
  //final User user;

  PastRides(Driver user) {
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Past Rides"),
      ),
      body: ListView.builder(
          itemCount: userPastRides.length,
          itemBuilder: (context, index) {
            if (driverPastRides[index].getUserId() == user.getUserId()) {
              return GestureDetector(
                onTap: () {
                  //favorites.add(Favorites(user.getUserId(), userPastRides[index].getTo(), userPastRides[index].getRideNumber()));
                },
                child: LocationCard(
                    driverPastRides[index].getRideNumber().toString(),
                    driverPastRides[index].getTo()),
              );
            } else {
              return Container();
            }
          }),
    );
  }
}