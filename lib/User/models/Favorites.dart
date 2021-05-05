import 'package:Giro/User/Screens/Favorites/Favorites.dart';

class Favorites {
  String userId;
  String location;
  int rideNumber;

  Favorites(String userId, String location, int rideNumber) {
    this.userId = userId;
    this.rideNumber = rideNumber;
    this.location = location;
  }
}
