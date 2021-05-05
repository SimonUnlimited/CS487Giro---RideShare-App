import 'package:Giro/Driver/Models/Driver.dart';
import 'User/models/Ride.dart';
import 'User/models/User.dart';

List<User> users = [
  User("lk", "lk", "lk", "lk", "lk", "lk", 0, "8217489", "3349 S Wabash Avenue", "3349 S Wabash Avenue", []),
  User("bk", "bk", "bk", "bk", "bk", "bk", 0, "0971249", "3201 S State Street", "3349 S Wabash Avenue", [])
];
List<Driver> drivers = [Driver("dk", "dk", "dk", "lk", "dk", "dk", 0, "8217489")];
const favorites = [];
List<Ride> userPastRides = [];
List<Ride>  driverPastRides = [];
List<Ride>  openRides = [];

User findUser(String userId) {
  for (int i = 0; i< users.length; i++) {
    if (users[i].getUserId() == userId) {
      return users[i];
    }
  }
}

Driver findDriver(String driverId) {
  for (int i = 0; i< drivers.length; i++) {
    if (drivers[i].getUserId() == driverId) {
      return drivers[i];
    }

  }
}

Ride findRide(int rideNumber) {
  for (int i = 0; i< openRides.length; i++) {
    if (openRides[i].getRideNumber() == rideNumber) {
      return openRides[i];
    }
  }
}

void removeOpenRide (int rideNumber) {
  for (int i = 0; i< openRides.length; i++) {
    if (openRides[i].getRideNumber() == rideNumber) {
      print(i);
      openRides.removeAt(i);
    }
  }
}

bool checkIfUserExists (String userId) {
  for (int i = 0; i< users.length; i++) {
    if (users[i].getUserId() == userId) {
      return true;
    }
  }
  return false;
}

bool checkIfDriverExists (String userId) {
  for (int i = 0; i< drivers.length; i++) {
    if (drivers[i].getUserId() == userId) {
      return true;
    }
  }
  return false;
}


var rides = 0;