import 'Figura.dart';

class Retangulo extends Figura {
  double comprimento;
  double largura;

  Retangulo(int x, int y, this.comprimento, this.largura) : super(x, y);

  void isQuadrado() {
    if(largura == comprimento) {
      print("A figura é um quadrado.");
    } else {
      print("A figura não é um quadrado.");
    }
  }

  @override
  double area() {
    return comprimento * largura;
  }
}