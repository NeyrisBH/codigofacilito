import 'dart:async';

import 'package:flutter/material.dart';

class Mensaje2 extends StatelessWidget {
  //Crear controlador
  StreamController<String> controller;

  //Constructor
  Mensaje2(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blueAccent,
      child:
        StreamBuilder<String>(
          stream: controller.stream,
          builder: (context, snapshot){
            if (snapshot.connectionState==ConnectionState.active || snapshot.connectionState==ConnectionState.done) {
              return Center(
                child:
                  Text(snapshot.data??"Sin dato")
              );
            } else {
              return const Center(
                child:
                  CircularProgressIndicator(),
              );
            }
          },
        ),
    );
  }
}