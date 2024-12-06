import 'package:flutter/material.dart';

import '../utils/colors.dart';

class ProgressDialogBox{
 static showLoaderDialog(BuildContext context) {
    AlertDialog alert = const AlertDialog(
      backgroundColor: Colors.transparent,
      content:  Center(
        child: CircularProgressIndicator(
          color: AppColors.primary,
          backgroundColor: AppColors.tp,
        ),
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}