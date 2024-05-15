import 'package:clase_cuatro/factory_method/custom_dialog.dart';
import 'package:flutter/cupertino.dart';

class IosAlertDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text('Este es el estilo de cipertino'),
      actions: [
        CupertinoButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('cerrar'),
        )
      ],
    );
  }

  @override
  String getTitle() => 'IOS Alert Dialog';
}