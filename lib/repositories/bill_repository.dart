import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ads_app/models/bills.dart';

abstract class BillRepository {
  Stream<List<Bill>> fetchBills();
}

class BillRepositoryImpl extends BillRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final Set<String> _processedBillIds = Set<String>();

  @override
  Stream<List<Bill>> fetchBills() async* {
    try {
      List<Bill> billList = [];
      CollectionReference stores = _db.collection('Stores');
      var snapShot = await stores.get();

      for (var storeDoc in snapShot.docs) {
        CollectionReference bills = stores.doc(storeDoc.id).collection('Bills');

      await for (var snapshot in bills.where('customerId', isEqualTo: "LW2016").orderBy("created_at", descending: true).snapshots()) {
          final newItems = snapshot.docs.where((doc) => !_processedBillIds.contains(doc.id)).map((doc) {
            var details = doc.data() as Map<String, dynamic>;
            _processedBillIds.add(doc.id);
            return Bill.fromJson(details['billDetails']);
          }).toList();

          billList.addAll(newItems);
          yield billList;
       };
      }
    } catch (e) {
      print("Error Value: $e");
      throw e;
    }
  }
}
