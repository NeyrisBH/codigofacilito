import 'package:clase_cinco/injection_container.dart';
import 'package:clase_cinco/presentation/using_provider/list_page/change_notifier/change_notifier.dart';
import 'package:clase_cinco/presentation/using_provider/list_page/widgets/character_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create: (_) => CharacterChangeNotifier(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const CharacterList(),
      ),
    );
  }
}
