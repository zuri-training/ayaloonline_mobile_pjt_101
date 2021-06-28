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

  userInfo() async {
    var doc = await _cloud.doc(uid).get();
    return doc.data();
  }
}

class UserModel {
  const UserModel(
      {required this.userName,
      required this.firstName,
      required this.lastName,
      required this.phoneNo,
      required this.gender,
      required this.businessName,
      required this.state,
      required this.occupation,
      required this.accountType,
      required this.verification});
  final String? userName;
  final String? firstName;
  final String? lastName;
  final String? phoneNo;
  final String? gender;
  final String? businessName;
  final String? state;
  final String? occupation;
  final String? verification;
  final String? accountType;

  factory UserModel.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return UserModel(
          userName: null,
          firstName: null,
          lastName: null,
          phoneNo: null,
          gender: null,
          businessName: null,
          state: null,
          occupation: null,
          accountType: null,
          verification: null);
    }
    final String userName = data['username'];
    final String firstName = data['firstname'];
    final String lastName = data['lastname'];
    final String phoneNo = data['phonename'];
    final String gender = data['gender'];
    final String businessName = data['businessname'];
    final String state = data['state'];
    final String occupation = data['occupation'];
    final String verification = data['verification'];
    final String accountType = data['accountType'];

    return UserModel(
        userName: userName,
        firstName: firstName,
        lastName: lastName,
        phoneNo: phoneNo,
        gender: gender,
        businessName: businessName,
        state: state,
        occupation: occupation,
        accountType: accountType,
        verification: verification);
  }
}
