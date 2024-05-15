

import 'package:clase_cuatro/singleton/example_state_base.dart';

final class ExampleStateByDefinition extends ExampleStateBase {
  static ExampleStateByDefinition? _instance;


  ExampleStateByDefinition._internal(){
    initialText = 'Texto por la definición';
    stateText = initialText;
  }

  static ExampleStateByDefinition getState(){
    return _instance ??= ExampleStateByDefinition._internal();
  }
}