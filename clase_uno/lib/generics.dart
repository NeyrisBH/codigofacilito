// Definir las clases fuera del método executeGeneric()

// Usar generics
class Data<T> {
  T data;
  Data(this.data);
}

void executeGeneric() {
  // Crear un objeto de la clase Int
  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);

  // Imprimir datos
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
}

// Sin generics
// No necesitamos definir las clases IntData y DoubleData
// Utilizaremos directamente la clase genérica Data<T>

void main() {
  executeGeneric();
}
