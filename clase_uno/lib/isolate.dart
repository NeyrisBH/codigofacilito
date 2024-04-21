import 'dart:isolate';

class Isolates {

  //Crear tarea pesada
  static int runTareononConIsolate(List<dynamic> args){
    //Recivir la bandera para poder renviar los valores al Isolate principal
    SendPort resultadoPuerto  = args[0];

    //Ejecutar el metodo pesado
    int valor = runTareononConIsolate(args[1]);

    //Una vez que terminemos la operacion regresaremos al Isolate principal con el resultado calculado.
    Isolate.exit(resultadoPuerto, valor);
  }


  //5000000000
  //En esta funcion vamos a sumar 4 mill millones de veces
  static int runTareononFueraIsolate(int count){
    int valor = 0;
    for (var i = 0; i < count; i++) {
      valor += i;
    }
    return valor;
  }
}