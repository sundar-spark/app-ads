
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FireBaseService{
  
  FirebaseFirestore firestoreDb = FirebaseFirestore.instance;

  Future addUser(String name, DateTime dob, int dbNumber)async{
    final user = <String, dynamic>{
  "name": name,
  "dateOfBirth": dob,
  "userId": await _generateID(),
  "uuid": FirebaseAuth.instance.currentUser!.uid,
  "phoneNumber": FirebaseAuth.instance.currentUser!.phoneNumber,
  "dpNumber": dbNumber,
};
   await firestoreDb.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).set(user);
  }

/// Generates a new Howl Code
  Future<String> _generateID()async{
    var random = Random();
    String newUserId="";
    bool flag =true;
    while(flag){
    var letters = List.generate(2, (index) => String.fromCharCode(random.nextInt(26) + 65));
    var numbers = List.generate(4, (index) => random.nextInt(10).toString());
    newUserId =  '${letters.join()}${numbers.join()}';

    flag = await _doesStringExist(newUserId);
    }
    return newUserId;

  }

  ///Checks if the HowlCode Already Exists
  Future<bool> _doesStringExist(String searchString) async {
  try {
    // Reference to your Firestore collection
    CollectionReference collectionRef = FirebaseFirestore.instance.collection('users');

    // Query to find documents where a specific field contains the search string
    QuerySnapshot querySnapshot = await collectionRef.where('userId', isEqualTo: searchString).get();

    // Check if any documents were found
    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    print('Error checking string existence: $e');
    return false;
  }
}
  
}