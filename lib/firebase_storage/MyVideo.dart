import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../home.dart';
import 'pa.dart';

class Video extends StatefulWidget {
  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  File? file;
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:PreferredSize(child: home(),
        preferredSize: Size.fromHeight(60),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.indigo[900],
          onPressed: () async {
            await getfile();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home1(sub1: file!),
              ),
            );
          },
          child: Text(
            'pick video',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }

  getfile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['mp3', 'mp4'],
    );

    if (result != null) {
      File c = File(result.files.single.path.toString());
      setState(() {
        file = c;
        name = result.names.toString();
      });
    }
  }
}