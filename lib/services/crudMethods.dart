import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CrudMethods {
  // Access a Cloud Firestore instance from your Activity
  static final Firestore db = Firestore.instance;

  // Reference to a Collection
  static CollectionReference userCollection = db.collection('users');

/*  final CollectionReference userCollection =
      Firestore.instance.collection('users');*/

  //Firestore db = Firestore.instance.collection('users');

  bool isLoggedIn() {
    if (FirebaseAuth.instance.currentUser() != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> addData(carData) async {
    if (isLoggedIn()) {
      Firestore.instance.collection('users').add(carData).catchError((e) {
        print(e);
      });
    } else {
      print('You need to be logged in');
    }
  }

  getData() async {
    return await userCollection.getDocuments();
  }

  Future _url(String uid) async {
    //return .where("state", "==", "CA");
    return userCollection.document(uid).get();
    //userCollection.document(uid).get('pic');
  }

  Future getPic(String uid) async {
    userCollection.document(uid).get().then((docSnap) {
      var picURL = docSnap['pic'];
      assert(picURL is String);
      //print(picURL);
      return picURL;
    });
  }

  Future getProfileURL(String uid) async {
    String _usrUrl;
    print(getPic(uid));
    return getPic(uid);

    /*
    //print(uid);
    QuerySnapshot rs;

    //String uid;
    //  String _userUrl;

    //getProfileURL({this.uid, this._userUrl})
    //String _userUrl = 'babababa';

    getData().then((results) {
      rs = results;
      rs.documents.forEach((f) {
        //print(f.data['uid']);
        if (f.data['uid'] == uid) {
          //print(f.data['uid']);

          if (f.data['pic'] != "") {
            _usrUrl = f.data['pic'].toString();

            //print(f.data['pic'].toString());

            //print(f.data['pic'].toString());
          }
        }
      });
      //print(_userUrl);
      //return _userUrl;
    });
    //print(_usrUrl);

    //print(_userUrl);
    //return _userUrl;
    return _usrUrl;
  }*/
  }
}
