import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService({this.uid});
  // collection reference
  final CollectionReference userCollection =
      Firestore.instance.collection('users');

  Future<void> updateUserData(String mode) async {
    print("New Useer---------");
    print(uid);
    return await userCollection.document(uid).setData({
      'mode': mode,
    });
  }
}
