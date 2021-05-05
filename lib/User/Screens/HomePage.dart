import 'package:Giro/Data.dart';
import 'package:Giro/User/Screens/Login/Login.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../Screens/Profile/Profile.dart';
import '../Screens/Payment/Payment.dart';
import '../Screens/PastRides/PastRides.dart';
import '../Screens/ScheduleRides/ScheduleRides.dart';
import './Favorites/Favorites.dart';
import '../Screens/Wallet/wallet.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';

  User user;
  //final User user;

  HomePage(User user) {
    this.user = user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Login()));
            },
            child: Text("Logout"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 200, left: 65),
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                width: 200,
                height: 150,
                /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                child: Text(
                  'Giro',
                  style: TextStyle(fontSize: 80),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ScheduleRides(user)));
              },
              child: Text(
                'Schedule Ride',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          Center(
            child: Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Recent Location'),
                  subtitle: Text('3349 S Wabash Avenue'),
                )
              ],
            )),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Favorites(user)));
            },
            child: Center(
              child: Card(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.star),
                    title: Text('Favorties'),
                    subtitle: Text('List of favorite locations'),
                  )
                ],
              )),
            ),
          ),
        ]),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(user.getFirstName()),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile(user)));
              },
            ),
            /*ListTile(
              title: Text('Payment'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Payment(user)));
              },
            ),
            */
            ListTile(
              title: Text('Past Rides'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => PastRides(user)));
              },
            ),
            ListTile(
              title: Text('Wallet'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Wallet(user)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
