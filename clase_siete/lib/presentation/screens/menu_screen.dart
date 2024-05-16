import 'package:flutter/material.dart';
import '../routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(
          color: Colors.white24,
          tiles: routes.keys.map(
            (key) => ListTile(
              title: Text(
                key,
                style: const TextStyle(
                  fontSize: 19,
                ),
              ),
              onTap: () => Navigator.pushNamed(
                context,
                key,
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
