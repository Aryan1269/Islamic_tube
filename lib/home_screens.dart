// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:islamic_tube/firebase_storage/feeds.dart';
import 'package:islamic_tube/firebase_storage/upload.dart';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:islamic_tube/home.dart';
import 'package:path/path.dart';
import 'package:islamic_tube/tabs/library.dart';
import 'package:islamic_tube/tabs/subscription.dart';
import 'package:islamic_tube/tabs/Explore.dart';


// import 'package:islamic_tube/videocard.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  UploadTask? task;
  File? file;
  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'no file selected';

    return Container(
      child: DefaultTabController(
          length: 5,
          child: Builder(
            builder: (context) => Scaffold(
              backgroundColor: Color.fromARGB(245, 50, 153, 39),
              bottomNavigationBar: TabBar(
                isScrollable: false,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelColor: Color.fromARGB(245, 7, 7, 7),
                labelStyle: TextStyle(fontSize: 9),
                labelPadding: const EdgeInsets.all(0),
                // ignore: prefer_const_literals_to_create_immutables
                tabs: [
                  Tab(height: 45, icon: Icon(Icons.home), text: 'Home'),
                  Tab(height: 45, icon: Icon(Icons.explore), text: 'Explore'),
                  Tab(
                    icon: IconButton(
                      onPressed: () {
                        bottom(context);
                      },
                      icon: Icon(Icons.add_circle_outline),
                      iconSize: 35,
                    ),
                    text: '',
                  ),
                  Tab(
                      height: 45,
                      icon: Icon(Icons.subscriptions_outlined),
                      text: 'SUBSCRIPTIONs'),
                  Tab(
                      height: 45,
                      icon: Icon(Icons.library_add),
                      text: 'LIBRARY'),
                ],
              ),
              body: TabBarView(children: [
                // mainHome(),
              feeds(),
                Trending(),
                //  videocard(),
                home(),
                subscription(),
                LIBRARYs(),
              ]),
            ),
          )),
    );
  }

  Future<void> bottom(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
             const Text('Create'),
              pickFile(context),

              ElevatedButton(
                child: const Text('Close BottomSheet'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      },
    );
  }

  ElevatedButton pickFile(BuildContext context) {
    return ElevatedButton.icon(
        label: Text("select and upload"),
        icon: Icon(Icons.file_upload),
        onPressed: () {
          selectFile();
        });
  }



  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(
        // type: FileType.custom,
        // allowedExtensions: ['mp3', 'mp4'],
        allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;
    setState(() {
      file = File(path);
    });
    final fileName = basename(file!.path);
    final destionation = 'files/$fileName';
    MYFirebasebaseStorage.uploadFile(destionation, file!);
    setState(() {
    });
  }

  // Future uploadFile() async {
  //   if (file == null) return;
  //   final fileName = basename(file!.path);
  //   final destionation = 'files/$fileName';
  //   MYFirebasebaseStorage.uploadFile(destionation, file!);
  //   setState(() {});
  // }
}
