import 'package:Giro/User/models/User.dart';
import 'package:flutter/material.dart';
import 'package:search_widget/search_widget.dart';
import '../Cards/FavoriteCard.dart';
import '../Cards/LocationCard.dart';

class ScheduleBottom extends StatefulWidget {
  User user;
  //final User user;

  ScheduleBottom(User user) {
    this.user = user;
  }
  
  
  @override
  _ScheduleBottomState createState() => _ScheduleBottomState();
}

class _ScheduleBottomState extends State<ScheduleBottom> {

  final to = TextEditingController();
  final from = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
