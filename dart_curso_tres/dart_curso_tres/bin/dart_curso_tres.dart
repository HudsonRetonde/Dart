import 'package:dart_curso_tres/dart_curso_tres.dart' as dart_curso_tres;

void main() {
  //escolherMeiosDeTransporteEnum(Transporte.barco);

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos("Rio de Janeiro", registrosVisitados);
  registrosVisitados = registrarDestinos("Guarapari", registrosVisitados);
  registrosVisitados = registrarDestinos("São Paulo", registrosVisitados);
  registrosVisitados = registrarDestinos("Belo Horizonte", registrosVisitados);
  print(registrosVisitados);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeiosDeTransporteEnum(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print("Vou de carro para a aventura");
      break;
    case Transporte.bike:
      print("Vou de bike para a aventura");
      break;
    case Transporte.aviao:
      print("Vou de avião par a aventura");
      break;
    case Transporte.cavalo:
      print("Vou a cavalo para a aventura");
      break;
    case Transporte.moto:
      print("Vou de moto para a aventura");
      break;
    case Transporte.patins:
      print("Vou de patins para aventura");
      break;
    case Transporte.skate:
      print("Vou de skate para aventura");
      break;
    case Transporte.andando:
      print("Vou andando para a aventura");
      break;
    default:
      print("Só sei que vou para aventura, como? Ainda não sei!");
      break;
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
  patins,
  barco,
  navio
}
