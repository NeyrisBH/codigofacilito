import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({super.key});

  @override
  State<StatefulWidget> createState() => ImplicitAnimationsPageState();
}

class ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
  static const _alingments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
    Alignment.center
  ];

  int _index = 0;
  AlignmentGeometry get _aliment => _alingments[_index % _alingments.length];

  double width = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.refresh),
      ),
      //body: animatedAling(),
      body: animatedContainer(),
    );
  }

  animatedAling() {
    return AnimatedAlign(
      alignment: _aliment,
      curve: Curves.easeOutExpo,
      duration: const Duration(milliseconds: 1000),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.greenAccent,
      ),
    );
  }

  animatedContainer() {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: width,
          height: 100,
          //curve: ,
          color: Colors.redAccent,
          //child: ,
        ),
        onClick(() {
          setState(() {
            width = 200;
          });
        })
      ],
    );
  }

  onClick(action) {
    return TextButton(
      onPressed: () => action(),
      child: const Text('Animar'),
    );
  }
}
