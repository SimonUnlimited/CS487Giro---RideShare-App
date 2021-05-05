import 'package:Giro/Driver/Models/Driver.dart';
import 'package:flutter/material.dart';
import '../../Widgtes/Profile/EditProfileForm.dart';

class EditProfile extends StatelessWidget {
  Driver user;
  //final User user;

  EditProfile(Driver user) {
    this.user = user;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: EditProfileForm(user),
    );
  }
}