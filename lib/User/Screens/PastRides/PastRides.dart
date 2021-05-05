import 'package:Giro/User/models/Favorites.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/Cards/LocationCard.dart';
import '../../../Data.dart';

class PastRides extends StatelessWidget {
  User user;
  //final User user;

  PastRides(User user) {
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
            if (userPastRides[index].getUserId() == user.getUserId()) {
              return GestureDetector(
                onTap: () {
                  favorites.add(Favorites(user.getUserId(), userPastRides[index].getTo(), userPastRides[index].getRideNumber()));
                },
                child: LocationCard(
                    userPastRides[index].getRideNumber().toString(),
                    userPastRides[index].getTo()),
              );
            } else {
              return Container();
            }
          }),
    );
  }
}
