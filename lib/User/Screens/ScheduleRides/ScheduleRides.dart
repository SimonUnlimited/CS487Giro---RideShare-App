import 'package:Giro/User/Screens/ScheduleRides/FinalScreen.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/ScheduleRides/ScheduleBottom.dart';
import './CarSelect.dart';
import '../../widgets/Cards/FavoriteCard.dart';
import '../../widgets/Cards/LocationCard.dart';

class ScheduleRides extends StatelessWidget {
  User user;
  //final User user;

  ScheduleRides(User user) {
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    String toText;
    String fromText;

    final to = TextEditingController();
    final from = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Schedule Ride"),
        ),
        body: Column(
          children: [
            SizedBox(
              width: 400,
              height: 200,
              child: Image.asset('lib/Images/Carshare.jpg'),
            ),
            Column(
              children: [
                Center(
                  child: Text('From'),
                ),
                TextField(
                  controller: from,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 5.0),
                    ),
                    hintText: 'Search Address',
                  ),
                ),
                Center(
                  child: Text('To'),
                ),
                TextField(
                  controller: to,
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blueAccent, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 5.0),
                    ),
                    hintText: 'Search Address',
                  ),
                ),
                LocationCard("Your Current Location", "3349 S Wabash Avenue"),
                LocationCard("Recent Location", "3349 S Wabash Avenue"),
                FavoriteCard("Favorites", " You know what it is")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ScheduleRides(user)));
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      toText = to.text;
                      fromText = from.text;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CarSelect(user, fromText, toText)));
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

/*
  Add image that fills 50% of page
  Create search button
  Create current location card
    Card contains Location Icon, your location text, address
  Create recent location card
    Card contains Location Icon, recent location text, address
  Create favorites card
    Card contains Favorites Icon, Favorite addresses
*/
