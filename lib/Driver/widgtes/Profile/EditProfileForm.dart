import 'package:Giro/Driver/Models/Driver.dart';
import 'package:Giro/Driver/Screens/HomePage/DriverHomePage.dart';
import 'package:flutter/material.dart';
import '../../../Data.dart';

class EditProfileForm extends StatefulWidget {
  Driver user;
  //final User user;

  EditProfileForm(Driver user) {
    this.user = user;
  }
  
  @override
  _EditProfileFormState createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final first = TextEditingController();
  final last = TextEditingController();
  final email = TextEditingController();
  final phone = TextEditingController();
  final pass = TextEditingController();
  final paymentInfo = TextEditingController();
  final location = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    first.dispose();
    last.dispose();
    email.dispose();
    phone.dispose();
    pass.dispose();
    paymentInfo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30),
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: first,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: last,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                    hintText: 'XXX-XXX-XXXX'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Current Password'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'New PassWord',
                    hintText: 'New password'),
              ),
            ),
            Container(
            margin: EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: paymentInfo,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Payment Info',
                  hintText: 'Card'),
            ),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, right: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
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
                  margin: EdgeInsets.only(top: 20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      for (int i = 0; i < drivers.length; i++) {
                        if (widget.user.getUserId() == drivers[i].getUserId()) {
                          drivers[i].setFirstName(first.text);
                          drivers[i].setLastName(last.text);
                          drivers[i].setPassWord(pass.text);
                          drivers[i].setPhoneNumber(phone.text);
                          drivers[i].setPaymentInfo(paymentInfo.text);
                        }
                      }
                      Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DriverHomePage(widget.user)));
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
        ),
      ),
    );
  }
}
