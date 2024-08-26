import 'package:mega/mega.dart' as mega;
import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<int> jogador = [];
  List<int> rdm = [];
  var random = Random();
  int acertos = 0;
  List<int> acertosl = [];

  stdout.writeln("Insira 6 números entre 0 e 60:");

  for (var i = 0; i < 6; i++) {
    String entrada = stdin.readLineSync()!;
    int entradaconv = int.parse(entrada);
    if (jogador.contains(entradaconv) || entradaconv > 60 || entradaconv < 0) {
      stdout.writeln("Insira um valor válido.");
      i--;
      continue;
    }
    jogador.add(int.parse(entrada));
  }

  for (var i = 0; i < 6; i++) {
    int entradapc = random.nextInt(61);
    if (rdm.contains(entradapc)) {
      i--;
      continue;
    }
    rdm.add(entradapc);
  }

  jogador.sort();
  rdm.sort();

  for (int val in jogador) {
    for (var i = 0; i < 6; i++) {
      if (val == rdm[i]) {
        acertos += 1;
        acertosl.add(val);
      }
    }
  }

  print("Seu jogo: $jogador");
  print("Sorteio: $rdm");
  if (acertosl.length > 1) {
    print("Você acertou $acertos vezes.");
    print("Voce acertou os seguintes valores: $acertosl");
  } else {
    print("Você não acertou nenhum número.");
  }
}
