import 'package:flutter/material.dart';

class CardType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Card Type'),
        Row(
          children: [
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  //Navigator.push(
                  // context, MaterialPageRoute(builder: (_) => Login()));
                },
                child: Text(
                  'Debit',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  //Navigator.push(
                  // context, MaterialPageRoute(builder: (_) => Login()));
                },
                child: Text(
                  'Credit',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
