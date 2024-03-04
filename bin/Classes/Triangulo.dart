import 'dart:math';

import 'Figura.dart';

class Triangulo extends Figura {
  double face1;
  double face2;
  double face3;

  Triangulo(int x, int y, this.face1, this.face2, this.face3) : super(x, y);

  void getTipo() {
    if (face1 == face2 && face2 == face3) {
      print("É um triângulo equilátero.");
    } else if ((face1 == face2) || (face1 == face3) || (face2 == face3)) {
      print("É um triângulo isósceles.");
    } else {
      print("É um triângulo escaleno.");
    }
  }

  @override
  double area() {
    //S = √ s(s − a)(s − b)(s − c)
    double s = (face1 + face2 + face3) / 2;

    return sqrt(s * (s - face1) * (s - face2) * (s - face3));
  }
}