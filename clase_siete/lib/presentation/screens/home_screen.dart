import 'package:flutter/material.dart';

import '../dialogs/confirm_dialog.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routePath = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => _logout(context),
            icon: const Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'home page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  void _logout(BuildContext context) async {
    final yes = await showConfirmDialog(context);
    if (yes && context.mounted) {
      /// pop all routes and then go to LOGIN page
      Navigator.pushNamedAndRemoveUntil(
        context,
        LoginScreen.routePath,
        (_) => false,
      );
    }
  }
}
