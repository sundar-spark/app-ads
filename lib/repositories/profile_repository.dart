import 'package:ads_app/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

abstract class ProfileRepository {
  Future<UserData?> fetchProfileDetails();
}

class ProfileRepositoryImpl extends ProfileRepository
{
  @override
  Future<UserData?> fetchProfileDetails()async {
    final FirebaseFirestore _db = FirebaseFirestore.instance;
   try{
    CollectionReference users = _db.collection('users');

  debugPrint(FirebaseAuth.instance.currentUser!.uid);
  DocumentReference documentReference = users.doc(FirebaseAuth.instance.currentUser!.uid);

  // Fetch the document snapshot
  DocumentSnapshot docSnapShot = await documentReference.get();

  if (docSnapShot.exists) {
    // Safely access data if the document exists
    var userData = UserData.fromJson(docSnapShot.data() as Map<String, dynamic>);
    return userData;
} else {
  debugPrint("Document does not exist.");
  return null; // Handle this case as needed
}

   }
   catch(e)
   {
      return null;
   }
  }

}