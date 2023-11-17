import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future permissionDialog(
    String title, Widget content, BuildContext context) async {
  await showDialog(
    context: context,
    builder: (_) => AlertDialog.adaptive(
      actions: [
        TextButton(
          onPressed: () {
            openAppSettings();
          },
          child: const Text(
            'Yes',
          ),
        ),
      ],
      title: Text(title),
      content: content,
    ),
  );
}
