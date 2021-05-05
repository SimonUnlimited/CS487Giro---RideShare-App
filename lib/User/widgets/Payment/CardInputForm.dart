import 'package:flutter/material.dart';
import '../../models/User.dart';

class CardInputForm extends StatefulWidget {
  User user;
  //final User user;

  CardInputForm(User user) {
    this.user = user;
  }

  @override
  _CardInputFormState createState() => _CardInputFormState();
}

class _CardInputFormState extends State<CardInputForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Card Number',
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  //Navigator.push(
                  // context, MaterialPageRoute(builder: (_) => Login()));
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  //Navigator.push(
                  // context, MaterialPageRoute(builder: (_) => Login()));
                },
                child: Text(
                  'Save',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
