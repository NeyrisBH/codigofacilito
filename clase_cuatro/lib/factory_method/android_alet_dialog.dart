

import 'package:clase_cuatro/factory_method/custom_dialog.dart';
import 'package:flutter/material.dart';

class AndroidAlertDialog extends CustomDialog {
  const AndroidAlertDialog();

  @override
  Widget create(BuildContext context) {
    return AlertDialog(
        title: Text(getTitle()),
        content: const Text('Este es el estilo de material{Android}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('cerrar')
          )
        ],
    );
  }

  @override
  String getTitle() => 'Android alert Dialog';
  
}