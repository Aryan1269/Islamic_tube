import 'dart:io';


import 'package:firebase_storage/firebase_storage.dart';

class MYFirebasebaseStorage{
  static UploadTask? uploadFile(String destionation, File file)
  {  
    try {
    final ref = FirebaseStorage.instance.ref(destionation);
    return ref.putFile(file);
    }
    catch(e)
    {
      print("error");
      print(e);
      return null;
    }
  }
}