import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/Cards/CarCard.dart';
import '../../widgets/Cards/FavoriteCard.dart';
import '../../widgets/Cards/LocationCard.dart';
import '../../../Data.dart';

class Favorites extends StatefulWidget {
  User user;
  //final User user;

  Favorites(User user) {
    this.user = user;
  }
  
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
      body: ListView.builder(
          itemCount: userPastRides.length,
          itemBuilder: (context, index) {
            if (userPastRides[index].getUserId() == widget.user.getUserId()) {
              return GestureDetector(
                onTap: () {
                  //favorites.add(Favorites(user.getUserId(), userPastRides[index].getTo(), userPastRides[index].getRideNumber()));
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
