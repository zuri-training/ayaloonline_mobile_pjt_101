import 'package:cloud_firestore/cloud_firestore.dart';

class UserDatabase {
  final String? uid;
  UserDatabase(this.uid);

  final CollectionReference _cloud =
      FirebaseFirestore.instance.collection('users');
//upadteUserdetails
  Future<void> upadteUserdetails({
    String? username,
    String? firstname,
    String? lastname,
    //String? address,
    String? phoneno,
    //String? cac,
    String? gender,
    String? businessname,
    String? state,
    String? occupation,
    String? verification,
    String? accountType,
  }) async {
    await _cloud.doc(uid).set(
      {
        'username': username,
        'firstname': firstname,
        'lastname': lastname,
        // 'address': address,
        'phonename': phoneno,
        //'cac': cac,
        'gender': gender,
        'businessname': businessname,
        'state': state,
        'occupation': occupation,
        'verification': verification,
        'accountType': accountType,
      },
    );
  }
}
