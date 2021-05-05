import 'dart:math';

import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/ScheduleRides/CarSelectBottom.dart';
import './FinalScreen.dart';
import '../../widgets/Cards/CarCard.dart';

class CarSelect extends StatelessWidget {
  User user;
  String from;
  String to;
  //final User user;

  CarSelect(User user, String from, String to) {
    this.user = user;
    this.from = from;
    this.to = to;
  }

  @override
  Widget build(BuildContext context) {
    String carSelect = "";
    var rng = new Random();

    int base = rng.nextInt(50);
    int xs = base + 5;
    int normal = base + 10;
    int xl = base + 15;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Car Select"),
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
                GestureDetector(
                  onTap: () {
                    carSelect = "XS";
                  },
                  child: CarCard("XS " + "\$" + xs.toString(), "1-2 People"),
                ),
                GestureDetector(
                  onTap: () {
                    carSelect = "Normal";
                  },
                  child: CarCard(
                      "Normal " + "\$" + normal.toString(), "3-4 People"),
                ),
                GestureDetector(
                  onTap: () {
                    carSelect = "XL";
                  },
                  child: CarCard("XL " + "\$" + xl.toString(), "5-6 People"),
                ),
                GestureDetector(
                  onTap: () {
                    carSelect = "CarPool";
                  },
                  child: CarCard("Car Pool " + "\$" + base.toString(),
                      "Join Someone and Split the Cost"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      //
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
                      switch (carSelect) {
                        case "CarPool":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => FinalScreen(
                                      user, from, to, carSelect, base)));
                          break;
                        case "XS":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => FinalScreen(
                                      user, from, to, carSelect, xs)));
                          break;
                        case "Normal":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => FinalScreen(
                                      user, from, to, carSelect, normal)));
                          break;
                        case "XL":
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => FinalScreen(
                                      user, from, to, carSelect, xl)));
                          break;
                      }
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
