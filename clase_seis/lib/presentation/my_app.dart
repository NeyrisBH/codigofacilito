import 'package:flutter/material.dart';
import 'routes.dart';
import 'screens/menu_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter testing',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
     home: const MenuScreen(),
      routes: routes,
    );
  }
}
