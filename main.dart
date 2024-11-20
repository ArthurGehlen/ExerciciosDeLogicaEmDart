import 'lib/lib.dart';

void verificacao_segundo_turno(
  int cand_a,
  int cand_b,
  int cand_c,
) {
  if (cand_a == cand_b && cand_b == cand_c) {
    print('Empate entre os três candidatos.');
  } else if (cand_a == cand_c) {
    print('Empate entre os candidatos 1 e 3');
  } else if (cand_b == cand_c) {
    print('Empate entre os candidatos 2 e 3');
  } else {
    print('Empate entre os candidatos 1 e 2');
  }
}

void main() {
  Map candidatos = {'Candidato 1': 0, 'Candidato 2': 0, 'Candidato 3': 0};

  print('Candidato 1 - 10');
  print('Candidato 2 - 20');
  print('Candidato 3 - 30');

  int voto = inputInt("Digite o seu voto: ");

  while (voto != 9999) {
    voto == 10 ? candidatos['Candidato 1'] += 1 : candidatos['Candidato 1'] = candidatos['Candidato 1'];
    voto == 20 ? candidatos['Candidato 2'] += 1 : candidatos['Candidato 2'] = candidatos['Candidato 2'];
    voto == 30 ? candidatos['Candidato 3'] += 1 : candidatos['Candidato 3'] = candidatos['Candidato 3'];

    voto = inputInt("Digite o seu voto: ");
  }

  print('Número de votos:');
  for (int i = 1; i <= 3; i++) {
    print('Candidato $i: ${candidatos['Candidato $i']}');
  }

  // Variáveis criadas para facilitar a leitura na verificação.
  int candidato_1 = candidatos['Candidato 1'];
  int candidato_2 = candidatos['Candidato 2'];
  int candidato_3 = candidatos['Candidato 3'];

  // Efetua a verificação dos votos para informar o candidato eleito.
  verificacao_segundo_turno(candidato_1, candidato_2, candidato_3);
}
