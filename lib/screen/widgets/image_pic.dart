import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerService {
  final ImagePicker _picker = ImagePicker();

  Future<File?> pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        return File(pickedFile.path);
      }
    } catch (e) {
      debugPrint("Error picking image: $e");
    }
    return null;
  }
}
