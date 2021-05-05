import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/Driver/Screens/PastRides/PastRides.dart';
import 'package:Giro/Driver/Screens/Profile/Profile.dart';
import 'package:Giro/Driver/Screens/Wallet/Wallet.dart';
import 'package:Giro/User/Screens/Login/Login.dart';
import 'package:flutter/material.dart';
import '../../widgtes/OpenRide/OpenRideCard.dart';
import '../../widgtes/OpenRide/OpenRides.dart';

class DriverHomePage extends StatefulWidget {
  static const routeName = '/homepage';

  Driver driver;

  DriverHomePage(Driver driver) {
    this.driver = driver;
  }

  @override
  _DriverHomePageState createState() => _DriverHomePageState();
}

class _DriverHomePageState extends State<DriverHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Login()));
            },
            child: Text("Logout"),
          ),
        ],
      ),
      body: OpenRides(widget.driver),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(widget.driver.getFirstName()),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Profile(widget.driver)));
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
                    context,
                    MaterialPageRoute(
                        builder: (_) => PastRides(widget.driver)));
              },
            ),
            ListTile(
              title: Text('Wallet'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => Wallet(widget.driver)));
              },
            ),
          ],
        ),
      ),
    );
  }
}
