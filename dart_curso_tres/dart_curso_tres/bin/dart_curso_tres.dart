import 'package:dart_curso_tres/dart_curso_tres.dart' as dart_curso_tres;

void main() {
  escolherMeioDeTransporte(9);
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
