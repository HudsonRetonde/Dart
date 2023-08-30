import 'package:dart_curso_tres/dart_curso_tres.dart' as dart_curso_tres;

void main() {
  escolherMeiosDeTransporteEnum(Transporte.bike);
}

void escolherMeioDeTransporte(int locomocao) {
  if (locomocao == 0) {
    print("Vou de carro para a aventura");
  } else if (locomocao == 1) {
    print("Vou de bike para a aventura");
  } else {
    print("Só sei que vou para aventura, como? Ainda não sei!");
  }
}

void escolherMeiosDeTransporteEnum(Transporte locomocao){
  if (locomocao == Transporte.carro) {
    print("Vou de carro para a aventura");
  } else if (locomocao == Transporte.bike) {
    print("Vou de bike para a aventura");
  } else {
    print("Só sei que vou para aventura, como? Ainda não sei!");
  }
}

enum Transporte {
  carro,
  bike,
  andando,
  moto, 
  cavalo,
  skate,
  aviao,
  patins
}