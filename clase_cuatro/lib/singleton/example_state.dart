

import 'package:clase_cuatro/singleton/example_state_base.dart';

final class ExampleState extends ExampleStateBase {
  static final _instance = ExampleState._internal();

  factory ExampleState(){
    return _instance;
  }

  ExampleState._internal() {
    initialText = 'Un nuevo ejemplo de instancia';
    stateText = initialText;
  }
}