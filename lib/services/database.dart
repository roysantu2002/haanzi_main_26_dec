import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:haanzi_main/common/common.dart';
import 'package:location/location.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  // collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('users');

  Future<void> updateUserData(String mode, String email) async {
    print("New Useer---------$uid");

    return await userCollection.document(uid).setData({
      'uid': uid,
      'email': email,
      'mode': mode,
      'date': currDate,
      'pic': '',
    });
  }
}
