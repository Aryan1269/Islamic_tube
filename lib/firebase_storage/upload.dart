import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MYFirebasebaseStorage {
  static UploadTask? uploadFile(String destionation, File file) {
    try {
      final ref = FirebaseStorage.instance.ref(destionation);
      Fluttertoast.showToast(
          msg: "successful",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 20,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      return ref.putFile(file);

    } catch (e) {
      Fluttertoast.showToast(
          msg: "error",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
      print(e);
      return null;
    }
  }
}
