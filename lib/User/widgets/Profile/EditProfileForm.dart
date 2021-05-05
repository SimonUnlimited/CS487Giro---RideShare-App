import 'package:Giro/Driver/Widgtes/Profile/EditProfileForm.dart';
import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../../Data.dart';
import '../../Screens/HomePage.dart';

class EditProfileForm extends StatefulWidget {
  User user;
  //final User user;

  EditProfileForm(User user) {
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
              margin: EdgeInsets.only(top:30),
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
              margin: EdgeInsets.only(top:10),
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
              margin: EdgeInsets.only(top:10),
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
              margin: EdgeInsets.only(top:10),
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
              margin: EdgeInsets.only(top:10),
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
              margin: EdgeInsets.only(top:10),
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: location,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Location',
                    hintText: 'Enter Address'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10),
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
                  margin: EdgeInsets.only(top:20, right: 20),
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
                  margin: EdgeInsets.only(top:20),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: FlatButton(
                    onPressed: () {
                      for (int i = 0; i < users.length; i++) {
                        if (widget.user.getUserId() == users[i].getUserId()) {
                          users[i].setFirstName(first.text);
                          users[i].setLastName(last.text);
                          users[i].setPassWord(pass.text);
                          users[i].setPhoneNumber(phone.text);
                          users[i].setLocation(location.text);
                          users[i].setPaymentInfo(paymentInfo.text);

                        }
                      }
                      Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage(widget.user)));
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
