import 'package:clase_cuatro/home_page.dart';
import 'package:clase_cuatro/user_preferences/user_preferences.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = UserPreferences();
  //Inicialización de valores
  await prefs.initPrefs();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
  
class _MyAppState extends State<MyApp> {
  // final List<ExampleStateBase> stateList = [
  //   ExampleState(),
  //   ExampleStateByDefinition.getState()
  // ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      //home: const HomeView()
      home: const HomePage(),
    );
  }
}
