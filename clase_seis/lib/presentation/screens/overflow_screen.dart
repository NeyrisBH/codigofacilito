import 'package:flutter/material.dart';

class OverflowScreen extends StatelessWidget {
  const OverflowScreen({super.key});

  static const routePath = '/overflow';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add more text to '
                    'force an overflow error',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(width: 30),
                  Icon(
                    Icons.flutter_dash,
                    size: 40,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
