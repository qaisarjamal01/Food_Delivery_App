import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class FirestoreService {
  //get collection of orders
  final CollectionReference orders = FirebaseFirestore.instance.collection('orders');

  //save order to database
  Future<void> saveOrderToDatabase(String receipt) async {
    try {
      await orders.add({
        'date': DateTime.now(),
        'order': receipt,

        //add more fields if necessary

      });
      if (kDebugMode) {
        print("✅ Order saved successfully!");
      }
    } catch (e) {
      if (kDebugMode) {
        print("❌ Error saving order: $e");
      }
    }
  }
}