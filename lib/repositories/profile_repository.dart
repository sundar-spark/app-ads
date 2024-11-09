import 'package:cloud_firestore/cloud_firestore.dart';

abstract class ProfileRepository {
  fetchProfileDetails();
}

class ProfileRepositoryImpl extends ProfileRepository
{
  @override
  fetchProfileDetails()async {
    final FirebaseFirestore _db = FirebaseFirestore.instance;
   try{
      CollectionReference user = _db.collection('users');
      // var snapShot = await user.where();
        //user.where();
   }
   catch(e)
   {

   }
  }

}