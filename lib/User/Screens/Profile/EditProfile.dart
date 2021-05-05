import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import '../../widgets/Profile/EditProfileForm.dart';

class EditProfile extends StatelessWidget {
  User user;
  //final User user;

  EditProfile(User user) {
    this.user = user;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: EditProfileForm(user),
    );
  }
}