import '../Classes/Circulo.dart';
import '../Classes/Figura.dart';
import '../Classes/Retangulo.dart';
import '../Classes/Triangulo.dart';

void main(List<String> arguments) {
  List<Figura> figuras = [];
  
  //Parte do círculo
  Circulo circulo = Circulo(4, 6, 8);
  figuras.add(circulo);
  print("Foi criado um Círculo em X=${circulo.x} e Y=${circulo.y}");
  print("A área é: ${circulo.area()}");
  print("O diâmetro é: ${circulo.diametro()}");
  print("\n");
  
  //Parte do retângulo
  Retangulo retangulo = Retangulo(2, 4, 8, 8);
  figuras.add(retangulo);
  print("Foi criado um Retângulo em X=${retangulo.x} e Y=${retangulo.y}");
  print("A área é: ${retangulo.area()}");
  retangulo.isQuadrado();
  print("\n");

  //Parte do retangulo sem ser quadrado
  Retangulo retangulo2 = Retangulo(3, 6, 7, 9);
  figuras.add(retangulo2);
  print("Foi criado um Retângulo em X=${retangulo2.x} e Y=${retangulo2.y}");
  print("A área é: ${retangulo2.area()}");
  retangulo2.isQuadrado();
  print("\n");

  //Parte do triângulo
  Triangulo triangulo = Triangulo(3, 6, 3, 4, 3);
  figuras.add(triangulo);
  print("Foi criado um Triângulo em X=${triangulo.x} e Y=${triangulo.y}");
  print("A área é: ${triangulo.area()}");
  triangulo.getTipo();
  print("\n");
  
  //Total da área das figuras
  print("A área total dos objetos é de : ${calcularAreaTotal(figuras)}");
  print("\n");
}

double calcularAreaTotal(List<Figura> figuras) {
  double totalArea = 0;

  for(var figura in figuras) {
    totalArea += figura.area();
  }

  return totalArea;
}