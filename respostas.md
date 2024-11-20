# 1
<code>
    int password = inputInt("Digite a senha: ");
    int correct_password = 2002;

    while (password != correct_password) {
        print("Senha Inválida! Tente novamente.");
        password = inputInt("");
    }

    print("Acesso Permitido.");
</code

# 2
<code>
  double nota_1 = inputDouble("Digite a primeira nota: ");

  while (nota_1 < 0 || nota_1 > 10) {
    print("Nota Inválida! Tente novamente");
    nota_1 = inputDouble('');
  }

  double nota_2 = inputDouble("Digite a segunda nota: ");

  while (nota_2 < 0 || nota_2 > 10) {
    print("Nota Inválida! Tente novamente");
    nota_2 = inputDouble('');
  }

  double media = (nota_1 + nota_2) / 2;

  print('Media: $media');
</code>

# 3
<code>
  int choice = inputInt("Informe um código (1, 2, 3) ou 4 para cancelar: ");
  int alcool = 0;
  int gasolina = 0;
  int diesel = 0;

  while (choice != 4) {
    if (choice == 1) {
      alcool += 1;
    }
    else if (choice == 2) {
      gasolina += 1;
    }
    else if (choice == 3) {
      diesel += 1;
    }

    choice = inputInt("Informe um código (1, 2, 3) ou 4 para cancelar: ");
  }

  print('Muito Obrigado.');
  print('Alcool: $alcool');
  print('Gasolina: $gasolina');
  print('Diesel: $diesel');
</code>

# 4
<code>
  print('Digite 2 Números: ');
  
  int number_1 = inputInt("");
  int number_2 = inputInt("");

  int numero = number_1 > 5 ? 0 : 1;

  while (number_1 != number_2) {
    number_1 > number_2 ? print('Decrescente') : print('Crescente');

    number_1 = inputInt("");
    number_2 = inputInt("");
  }
</code> 

# 6 
<code>
  int numeros_pares = 0;
  int numeros_impares = 0;
  bool executando = true;
  int numero = inputInt("Digite um número: ");

  while (true) {
    numero % 2 == 0 ? numeros_pares += 1 : numeros_impares += 1;

    String continuar = inputStr('Deseja continuar?: ');

    continuar == 'Nao' ? executando = false : executando = true;
    numero = inputInt("Digite um número: ");
  }

  print('Números pares: $numeros_pares');
  print('Números ímpares: $numeros_impares');
</code>

# 7 
<code>
  int segundos = 0;
  double minutos = 0;
  double massa = inputDouble('Digite a massa inicial em gramas: ');

  while (massa > 1) {
    segundos += 1;

    if (segundos == 30) {
      minutos += 0.5;
      massa /= 2;
      segundos = 0;
    }

  }

  print('Minutos: $minutos');
</code>

# Folha 2

# 5
<code>
  int i = 25;
  do {
    print(i);
    i--;
  } while(i != 0);
</code>

# 6 
<code>
  int input = inputInt('Digite um número: ');
  int i = 0;
  int resultado = 0;
  
  while(i != input) {
    resultado += i + 1;
    i++;
  }

  print(resultado);
</code>

# 7 
<code>
  int input = inputInt('Digite um valor: ');
  int resultado = 0;

  while (input != 0) {
    resultado += input; 
    
    input = inputInt('Digite um valor: ');
  }

  print(resultado);
</code>

# 8 
<code>
int input = inputInt('Digte um valor: ');
  int numeros_de_input = 0;
  int soma = 0;
  double media = 0;
  int maior = -1;
  int menor = 100000000000;

  while (input > 0) {
    if (menor > input) {
      menor = input;
    }
    if (maior < input) {
      maior = input;
    }
    soma += input;
    numeros_de_input++;

    input = inputInt('Digite um valor: ');
  }
  
  media = soma / numeros_de_input;

  print(soma);
  print(media);
  print(maior);
  print(menor);
</code>

# 9 
<code>
  bool sexo_feminino = false;
  bool sexo_masculino = false;
  String sexo = inputStr('Digite o seu sexo: ');
  double altura = inputDouble('Digite a altura: ');
  int media_mulheres = 0;
  int media_homens = 0;

  sexo == 'feminino' ? sexo_feminino = true : sexo_masculino = true;

  while(altura > 0) {
    if (sexo_feminino = true && altura >= 1.6) {
      media_mulheres += 1;
    }
    if (sexo_masculino = true && altura >= 1.73) {
      media_homens += 1;
    }
    
    String sexo = inputStr('Digite o seu sexo: ');
    altura = inputDouble('Digite a altura: ');
    
    sexo == 'feminino' ? sexo_feminino = true : sexo_masculino = true;
  }

  print('Media mulheres: $media_mulheres');
  print('Media homens: $media_homens');
</code>

# 10
<code>
  String name = inputStr('Digite seu nome: ');
  int ID = inputInt('Digite seu id: ');
  double valor_compra = inputDouble('Digite o valor da compra: ');
  int numero_prestacoes = inputInt('Digite o número de prestações: ');

  while (ID != -1) {
    while (numero_prestacoes < 2 || numero_prestacoes > 36) {
      print('Número de prestações inválido! Insira um número entre 2 e 36.');
      numero_prestacoes = inputInt('Digite o número de prestações: ');
    }

    double valor_cada_prestacao = valor_compra / numero_prestacoes;
    double valor_prestacao_proximos_12_meses = valor_cada_prestacao / 12;

    print('Nome: $name');
    print('Número da conta: $ID');
    print('Valor total da compra: $valor_compra');
    print(
        'Valor de cada pretação nos próximos 12 meses: $valor_prestacao_proximos_12_meses');

    name = inputStr('Digite seu nome: ');
    ID = inputInt('Digite seu id: ');
    valor_compra = inputDouble('Digite o valor da compra: ');
    numero_prestacoes = inputInt('Digite o número de prestações: ');
  }
</code>