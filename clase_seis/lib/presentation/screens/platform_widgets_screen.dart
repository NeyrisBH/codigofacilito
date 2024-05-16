import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformWidgetsScreen extends StatelessWidget {
  const PlatformWidgetsScreen({super.key});

  static const routePath = '/platform-widgets';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Platform.isIOS)
              CupertinoButton(
                child: const Text('Cupertino'),
                onPressed: () {},
              )
            else
              ElevatedButton(
                child: const Text('Material'),
                onPressed: () {},
              ),
          ],
        ),
      ),
    );
  }
}
