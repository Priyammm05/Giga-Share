// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:giga_share/services/file_picker_service.dart';
import 'package:giga_share/services/image_picker_service.dart';
import 'package:giga_share/services/video_picker_service.dart';
import 'package:giga_share/widgets/custom_button.dart';
import 'package:giga_share/widgets/custom_divider.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'UPLOAD',
          style: TextStyle(
            letterSpacing: 1.2,
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CustomButton(
                color: Colors.black87,
                onPressed: () async {
                  await ImagePickerService.pickImage(context);
                },
                title: 'Upload Photo',
              ),
            ),
            SizedBox(height: 10),
            CustomDivider(),
            SizedBox(height: 10),
            Center(
              child: CustomButton(
                color: Colors.black87,
                onPressed: () async {
                  await VideoPickerService.pickVideo(context);
                },
                title: 'Upload Video',
              ),
            ),
            SizedBox(height: 10),
            CustomDivider(),
            SizedBox(height: 10),
            Center(
              child: CustomButton(
                color: Colors.black87,
                onPressed: () async {
                  await FilePickerService.pickFile(context);
                },
                title: 'Upload File',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
