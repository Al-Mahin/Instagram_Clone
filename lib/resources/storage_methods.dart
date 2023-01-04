// import 'dart:typed_data';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:uuid/uuid.dart';

// class StorageMethods {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseStorage _storage = FirebaseStorage.instance;

//   // adding image to firebase storage
//   Future<String> uploadImageToStorage(
//       String childName, Uint8List file, bool isPost) async {
//     // creating location to our firebase storage

//     print('storage success 0');
//     Reference ref =
//         _storage.ref().child(childName).child(_auth.currentUser!.uid);

//     print('storage success 1');
//     if (isPost) {
//       String id = const Uuid().v1();
//       ref = ref.child(id);
//     }
//     print('storage success 2');
//     // putting in uint8list format -> Upload task like a future but not future
//     UploadTask uploadTask = ref.putData(file);
//     print('storage success 3');
//     TaskSnapshot snapshot = await uploadTask;
//     print('storage success 4');
//     String downloadUrl = await snapshot.ref.getDownloadURL();
//     print('storage success 5');
//     return downloadUrl;
//   }
// }

import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

class StorageMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // adding image to firebase storage
  Future<String> uploadImageToStorage(
      String childName, Uint8List file, bool isPost) async {
    // creating location to our firebase storage

    print('storage success 0');
    Reference ref =
        _storage.ref().child(childName).child(_auth.currentUser!.uid);

    print('storage success 1');
    if (isPost) {
      String id = const Uuid().v1();
      ref = ref.child(id);
    }
    print('storage success 2');
    // putting in uint8list format -> Upload task like a future but not future
    UploadTask uploadTask = ref.putData(file);
    print('storage success 3');

    ///
    ///
    ///
    /// error in below portion
    TaskSnapshot snapshot = await uploadTask;
    print('storage success 4');
    String downloadUrl = await snapshot.ref.getDownloadURL();
    print('storage success 5');
    return downloadUrl;
  }
}
