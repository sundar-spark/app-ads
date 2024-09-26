import 'package:ads_app/models/offers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class OfferRepository {
  Future<List<Offers>> fetchOffers();
}

class OfferRepositoryImpl extends OfferRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  @override
  Future<List<Offers>> fetchOffers() async {
    try {
      List<Offers> offerList = [];
      CollectionReference stores = _db.collection('Stores');
      var snapShot = await stores.get();

      for (var storeDoc in snapShot.docs) {
        QuerySnapshot offers = await stores.doc(storeDoc.id).collection('Offers').get();

       for (var snapshot in offers.docs) {

        final value = snapshot.data() as Map<String,dynamic>;
          offerList.add(Offers.fromJson(value));
          // final newItems = snapshot.data((value)=> .map((doc) {
          //   print("new Offers: ${doc.data()}");
          //   return Offers.fromJson(doc.data() as Map<String, dynamic>);
          // }).toList();

          //offerList.addAll(newItems);
          
       };
      }
      print("OfferList: $offerList");
       return  offerList;

    } catch (e, stackTrace) {
      print("Error Value: $e, $stackTrace");
      throw e;
    }
  }
}
