import 'lib/lib.dart';

void main() {
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
}
