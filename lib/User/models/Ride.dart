import 'package:Giro/Data.dart';

class Ride {
  String userId;
  String driverId;
  int rideNumber;
  String from;
  String to;
  int cost;
  String rideType;

  Ride(
    String userId,
    String driverId,
    int rideNumber,
    String from,
    String to,
    int cost,
    String rideType,
  ) {
    this.userId = userId;
    this.driverId = driverId;
    this.rideNumber = rideNumber;
    this.from = from;
    this.to = to;
    this.cost = cost;
    this.rideType = rideType;
  }

  String getDriverId() {
    return driverId;
  }

  String getUserId() {
    return userId;
  }

  int getRideNumber() {
    return rideNumber;
  }

  String getFrom() {
    return from;
  }

  String getTo() {
    return to;
  }

  int getCost() {
    return cost;
  }

  String getRideType() {
    return rideType;
  }

  void setDriverId(String driverId) {
    this.driverId = driverId;
  }
}
