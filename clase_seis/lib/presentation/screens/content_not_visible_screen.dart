import 'package:flutter/material.dart';

import '../dialogs/alert_dialog.dart';

class ContentNotVisibleScreen extends StatelessWidget {
  const ContentNotVisibleScreen({super.key});

  static const routePath = '/content-not-visible';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ...Colors.primaries.map(
            (e) => Container(
              height: 50,
              color: e,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showAlertDialog(
                context,
                message: 'AMAZING BOOTCAMP',
              );
            },
            child: const Text(
              'show message',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
