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

class Fruta extends Alimento {
  String sabor;
  int DiasDeColheira;
  bool? isMadura;
  Fruta(String nome, double peso, String cor, this.sabor, this.DiasDeColheira,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasMadura) {
    isMadura = DiasDeColheira >= diasMadura;
    print(
        "A sua $nome foi colhida a $DiasDeColheira dias, e precisa de $diasMadura para ser comida. Ela está madura? $isMadura.");
  }

  fazerSuco() {
    print("Você fez um ótimo suco!");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso grams e é $cor.");
  }
}

class Legumes extends Alimento {
  bool IsPrecisaCozinha;
  Legumes(String nome, double peso, String cor, this.IsPrecisaCozinha)
      : super(nome, peso, cor);
  void cozinhar() {
    if (IsPrecisaCozinha) {
      print("Prontp, o $nome já está conzinhando!");
    } else {
      print("Este legume nem precisa conzinhar...");
    }
  }
}

class Citricas {
  String nome;
  double peso;
  String cor;
  int diaDeColheita;
  bool? isMadura;
  double nivelAzedo;
  Citricas(this.nome, this.peso, this.cor, this.diaDeColheita, this.isMadura,
      this.nivelAzedo);
}

class FrutasSecas {
  String nome;
  double peso;
  String cor;
  int diaDeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;
  FrutasSecas(this.nome, this.peso, this.cor, this.diaDeColheita, this.isMadura,
      this.porcentagemOleoNatural);
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
