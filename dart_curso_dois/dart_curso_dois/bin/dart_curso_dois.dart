void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDeColheita = 40;
  bool isMadura = funcEstaMadura(diasDeColheita);
  print(isMadura);
  print(funcEstaMadura(15));
  mostrarMadura(nome, diasDeColheita, cor: "orange");
  funcQuantosDiasMadura(15, nome);
  funcQuantosDiasMadura(diasDeColheita, nome);
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String fruta, int dias, {String? cor}) {
  if (dias >= 30) {
    print("A $fruta está madura.");
  } else {
    print("A $fruta não está madura.");
  }

  if (cor != null) {
    print("A $fruta tem a cor $cor .");
  }
}

funcQuantosDiasMadura(int dias, String fruta) {
  int frutaMadura = 30;
  int quantosDiasFaltam = frutaMadura - dias;
  if (dias > frutaMadura) {
    print("A $fruta já está madura, aproveite!");
  } else {
    print("Faltam $quantosDiasFaltam para a $fruta ficar madura.");
  }
}
