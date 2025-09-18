import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future<void> addUserDetails(Map<String, dynamic> userInfoMap, String id) async {
    await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .set(userInfoMap);
  }

  Future<void> addUserBooking(Map<String, dynamic> bookingInfoMap) async {
    await FirebaseFirestore.instance
        .collection("Booking")
        .add(bookingInfoMap);
  }

  Stream<QuerySnapshot> getBookings() {
    return FirebaseFirestore.instance
        .collection("Booking")
        .snapshots();
  }
}
