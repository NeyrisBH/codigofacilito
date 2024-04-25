import 'dart:async';

exampleStreamData(StreamController<String> controller) async {
  
  //final controller = StreamController<String>.broadcast();

  // controller.stream.listen((data) {
  //   print("Texto $data");
  // });

  // controller.stream.listen((data) {
  //   print("Texto $data");
  // });

  controller.add(await addDelayData("Hola"));
  controller.add(await addDelayData("Mundo"));
  controller.add(await addDelayData("Como"));
  controller.add(await addDelayData("Estas"));
  controller.add(await addDelayData("Hoy"));
  controller.close();
}

Future<String>addDelayData(String data) async {
  return await Future.delayed(const Duration(seconds: 1),()=> data);
}