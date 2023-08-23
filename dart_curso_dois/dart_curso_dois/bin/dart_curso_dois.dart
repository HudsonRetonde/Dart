void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e cítrica";
  int diasDeColheita = 40;
  bool isMadura = funcEstaMadura(diasDeColheita);

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDeColheita);
  Fruta fruta02 = Fruta("Limão", 122.00, "verde", "cítrica", 34);
  print(fruta01.estaMadura(50));
  print(fruta02.estaMadura(10));
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int DiasDeColheira;
  bool? isMadura;
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.DiasDeColheira,
      {this.isMadura});
  estaMadura(int diasMadura) {
    isMadura = DiasDeColheira >= diasMadura;
    print("A sua $nome foi colhida a $DiasDeColheira dias, e precisa de $diasMadura para ser comida. Ela está madura? $isMadura.");
  }
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
