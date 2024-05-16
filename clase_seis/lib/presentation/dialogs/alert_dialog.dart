import 'package:flutter/material.dart';

Future<void> showAlertDialog(
  BuildContext context, {
  Key? key,
  required String message,
}) {
  return showDialog(
    context: context,
    builder: (_) => AlertDialog(
      key: key,
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(
            context,
          ),
          child: const Text('OK'),
        )
      ],
    ),
  );
}
