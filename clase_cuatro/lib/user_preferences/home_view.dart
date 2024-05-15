import 'package:clase_cuatro/user_preferences/user_preferences.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final prefs = UserPreferences();
    return SafeArea(
      child: Container(
        color: Colors.lightBlue,
        child: Column(
          children: [
            Text(prefs.defauldRoute),
            ElevatedButton(
              onPressed: (){
                //final prefs = UserPeferences();
                prefs.defauldRoute = '/home';
              }, child: const Text('Cambiar Ruta'),
            )
          ],
        )
      ),
    );
  }
}