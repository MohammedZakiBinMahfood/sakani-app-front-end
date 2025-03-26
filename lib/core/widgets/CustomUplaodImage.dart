import 'package:flutter/material.dart';
import 'dart:io';

//import 'package:image_picker/image_picker.dart';

class CustomUploadImage extends StatefulWidget {
  final bool isUploading;
  final double uploadProgress;
  final Function(File?)? onImageSelected;
  final double imageSize;
  final BoxShape imageShape;
  final Color backgroundColor;
  final Color progressColor;
  final Color buttonColor;
  final Color iconColor;

  CustomUploadImage({
    this.isUploading = false,
    this.uploadProgress = 0.0,
    this.onImageSelected,
    this.imageSize = 200.0,
    this.imageShape = BoxShape.rectangle,
    this.backgroundColor = Colors.white,
    this.progressColor = Colors.blue,
    this.buttonColor = Colors.blue,
    this.iconColor = Colors.grey,
  });

  //late final ImagePicker _picker;
  _CustomUploadImageState createState() => _CustomUploadImageState();
}

class _CustomUploadImageState extends State<CustomUploadImage> {
  File? _image;
  // final _picker = ImagePicker();

// دالة لاختيار الصورة
  // Future<void> _pickImage() async {
  //   final XFile? pickedFile =
  //       await _picker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     setState(() {
  //       _image = File(pickedFile.path);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _image == null
              ? const Text('No Image Selected')
              : Image.file(_image!, width: 200, height: 200, fit: BoxFit.cover),
          const SizedBox(height: 20),
          // ElevatedButton(
          //   onPressed: _pickImage,
          //   child: const Text(''),
          // ),
        ],
      ),
    ); // Replace with your actual widget
  }
}
