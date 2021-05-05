import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/Driver/widgtes/OpenRide/OpenRideCard.dart';
import 'package:Giro/User/widgets/Cards/LocationCard.dart';
import 'package:flutter/material.dart';
import '../../../Data.dart';

class OpenRides extends StatefulWidget {
  Driver driver;

  OpenRides(Driver driver) {
    this.driver = driver;
  }
  @override
  _OpenRidesState createState() => _OpenRidesState();
}

class _OpenRidesState extends State<OpenRides> {
  void updateList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: openRides.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(top: 10),
                child: OpenRideCard(
                  widget.driver,
                  openRides[index],
                  updateList,
                ));
          }),
    );
  }
}
