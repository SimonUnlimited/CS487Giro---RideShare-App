import 'package:Giro/User/Screens/PastRides/PastRides.dart';
import 'package:Giro/User/models/Ride.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../HomePage.dart';
import '../../widgets/ScheduleRides/FinalScreen.dart';
import '../../widgets/ScheduleRides/FinalScreenBottom.dart';
import '../../../Data.dart';
import '../../widgets/Cards/CarCard.dart';
import '../../widgets/Cards/LocationCard.dart';

class FinalScreen extends StatefulWidget {
  User user;
  String from;
  String to;
  String carSelect;
  int cost;
  //final User user;

  FinalScreen(User user, String from, String to, String carSelect, int cost) {
    this.user = user;
    this.from = from;
    this.to = to;
    this.carSelect = carSelect;
    this.cost = cost;
  }

  @override
  _FinalScreenState createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Schedule Ride Final"),
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
                LocationCard("Selected Place Name", widget.to),
                CarCard("Selected Car Size", widget.carSelect),
                Card(
                    child: ListTile(
                  leading: Text("Cost"),
                  subtitle: Text("\$" + widget.cost.toString()),
                ))
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
                              builder: (_) => HomePage(widget.user)));
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
                      openRides.add(Ride(
                          widget.user.getUserId(),
                          "",
                          rides,
                          widget.from,
                          widget.to,
                          widget.cost,
                          widget.carSelect));
                          rides+=1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => HomePage(widget.user)));
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
