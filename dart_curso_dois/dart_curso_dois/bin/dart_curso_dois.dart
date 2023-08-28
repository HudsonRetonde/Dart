
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

  Legumes mandioca = Legumes('Macaxeira', 1200, 'Marron', true);
  mandioca.printAlimento();

  Fruta banana1 = Fruta("Banana", 75, "Amarela", "doce", 12);
  banana1.printAlimento();
  banana1.separarIngredientes();

  FrutasSecas nozes = FrutasSecas("nozes", 0.125, 'bege', 'doce', 115, 35);
  nozes.printAlimento();
  nozes.fazerMassa();
  Citricas limao1 = Citricas('Limão', 100, 'verde', 'azedo', 6, 9);
  limao1.printAlimento();
}

class Fruta extends Alimento implements Bolo {
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

  @override
  separarIngredientes() {
    print("COlher o(a) $nome.");
  }

  @override
  assar() {
    print("Colocar no forno.");
  }

  @override
  fazerMassa() {
    print("Misturar a fruta com farinha, açucar, ovos e etc...");
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

class Legumes extends Alimento implements Bolo {
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

  @override
  assar() {
    // TODO: implement assar
    throw UnimplementedError();
  }

  @override
  fazerMassa() {
    // TODO: implement fazerMassa
    throw UnimplementedError();
  }

  @override
  separarIngredientes() {
    // TODO: implement separarIngredientes
    throw UnimplementedError();
  }
}

class Citricas extends Fruta {
  double nivelAzedo;
  Citricas(String nome, double peso, String cor, String sabor,
      int diaDeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diaDeColheita);

  exiteRefri(bool existe) {
    if (existe) {
      print("Existe refrigente de $nome!");
    } else {
      print("Não existe refrigernte de $nome...");
    }
  }
}

class FrutasSecas extends Fruta {
  double porcentagemOleoNatural;
  FrutasSecas(String nome, double peso, String cor, String sabor,
      int diaDeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diaDeColheita);
  @override
  void fazerMassa() {
    print("tirar a casca.");
    super.fazerMassa();
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

abstract class Bolo {
  separarIngredientes();

  fazerMassa();

  assar();
}
