
import 'package:Giro/Data.dart';
import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/User/models/Ride.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import 'package:Giro/Data.dart';

class OpenRideCard extends StatefulWidget {
  Ride ride;
  Function update;
  Driver driver;

  OpenRideCard(Driver driver, Ride ride, Function update) {
    this.ride = ride;
    this.update = update;
    this.driver = driver;

  }

  @override
  _OpenRideCardState createState() => _OpenRideCardState();
}

class _OpenRideCardState extends State<OpenRideCard> {

    bool rideOver = false;
    bool acceptedRide = false;
    String accept = "Accept";
    String deny = "Deny";
    String endRide = "EndRide";

  @override
  void initState() {
    super.initState();

  }
  
  @override
  Widget build(BuildContext context) {

    User user = findUser(widget.ride.getUserId());
    Driver driver;


    void updateState (bool val) {
      setState(() {
        acceptedRide = true;
        widget.update();
      });
    }
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text( widget.ride.getRideNumber().toString() ),
            ),
            ListTile(
              title: Text( "User: " + user.getFirstName()),
            ),
            ListTile(
              title: Text( "From: " + widget.ride.getFrom()),
            ),
            ListTile(
              title: Text( "To: " + widget.ride.getTo() ),
            ),
            ListTile(
              title: Text( "Cost: " + "\$"+ widget.ride.getCost().toString() ),
            ),
            acceptedRide ? 
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(endRide),
                  onPressed: () {
                    print("here");
                    widget.ride.setDriverId(widget.driver.getUserId());
                    userPastRides.add(widget.ride);
                    driverPastRides.add(widget.ride);
                    print(driverPastRides.toString());
                    user.setWallet(user.getWallet() - widget.ride.getCost());
                    driver = findDriver(widget.ride.getDriverId());
                    driver.setWallet(driver.getWallet() + widget.ride.getCost());
                    removeOpenRide(widget.ride.getRideNumber());
                    widget.update();
                  },
                ),
              ]
            )
            :
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(accept),
                  onPressed: () {
                    updateState(true);
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Text(deny),
                  onPressed: () {
                    removeOpenRide(widget.ride.getRideNumber());
                    widget.update();
                    },
                ),
                const SizedBox(width: 8),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}