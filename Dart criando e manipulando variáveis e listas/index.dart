void main() {
  List<dynamic> quaisquerValores = [36, 1.84, 'Hudson', 'Cuca'];
  int idade = 36;
  double altura = 1.84;
  bool lerAPalavraEBom = true;
  String nome = 'Hudson';
  String apelido = 'Cuca';
  String frase = 'Olá, meu nome é ${quaisquerValores[2]} \n'
      'tenho ${quaisquerValores[0]} anos, \n'
      'minhaaltura é ${quaisquerValores[1]}, \n'
      'alguns parentes me chamam de ${quaisquerValores[3]}.';
  
  

  print(frase);
}
