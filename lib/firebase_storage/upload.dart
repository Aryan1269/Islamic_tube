import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'MyVideo.dart';

class MYFirebasebaseStorage {
  static Future<UploadTask?> uploadFile(String destionation, File file) async {
    try {
      final ref = FirebaseStorage.instance.ref(destionation);
      var downloadUrl = await ref.getDownloadURL();
      final String url = downloadUrl.toString();
      print("aryan");
      print(url);
      // VideoWidget(play: true, url: url);
      Fluttertoast.showToast(
          msg: "$url",
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
