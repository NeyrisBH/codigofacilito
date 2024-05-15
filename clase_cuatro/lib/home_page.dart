import 'package:clase_cuatro/factory_method/android_alet_dialog.dart';
import 'package:clase_cuatro/factory_method/custom_dialog.dart';
import 'package:clase_cuatro/factory_method/ios_alert_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<CustomDialog> _dialogList = [
      const AndroidAlertDialog(),
      IosAlertDialog()
    ];

    Future<void> _showCustomDialog(BuildContext context, int index) async {
      final selectedDialog = _dialogList[index];
      await selectedDialog.show(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patron Factory Method'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _showCustomDialog(context, 0),
              child: const Text('Abrir Dialog Android')
            ),
            const SizedBox(height: 50,),
            CupertinoButton(
              child: const Text('Abrir Dialog IOS'),
              onPressed: () => _showCustomDialog(context, 1)
            )
          ],
        ),
      ),
    );
  }
}