import 'package:flutter/material.dart';
import 'package:remdy/utils/AppSpacing.dart';
import 'package:remdy/utils/colors.dart';

class ShowDialog extends StatelessWidget {
 final String title;
 final String content;

  ShowDialog({required this.title, required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title:  Text(title),
      content:  Text(content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Container(
            color: AppColors.primary,
            padding: const EdgeInsets.all(AppSpacing.appSpacing_14),
            child: const Text("okay"),
          ),
        ),
      ],
    );
  }
}