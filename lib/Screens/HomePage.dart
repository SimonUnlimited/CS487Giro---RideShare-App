import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/homepage';

  var user;
  //final User user;

  HomePage({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home"),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
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
                  subtitle:
                      Text('3349 S Wabash Avenue'),
                )
              ],
            )),
          ),
          Center(
            child: Card(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Favorties'),
                  subtitle:
                      Text('List of favorite locations'),
                )
              ],
            )),
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
              child: Text('Customer Name'),
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Payment'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Past Rides'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
