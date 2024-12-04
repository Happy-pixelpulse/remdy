import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'image_pic.dart';

class ProfilePicker extends StatefulWidget {
  const ProfilePicker({
    super.key,
  });

  @override
  State<ProfilePicker> createState() => _ProfilePickerState();
}

class _ProfilePickerState extends State<ProfilePicker> {
  File? _profileImage;
  ImagePickerService pickerService = ImagePickerService();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Choose Image Source"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text("Gallery"),
            onTap: () async {
              final image = await pickerService.pickImage(ImageSource.gallery);
              if (image != null) {
                setState(() {
                  _profileImage = image;
                });
              }
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text("Camera"),
            onTap: () async {
              final image = await pickerService.pickImage(ImageSource.camera);
              if (image != null) {
                setState(() {
                  _profileImage = image;
                });
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
