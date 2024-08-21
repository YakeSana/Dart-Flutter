//importar pacote para entrada e saida
import 'dart:io';
//importar pacote para geração de valores aleatórios
import 'dart:math';

//criar um enum que representa as opções, lembrando que o usuário pode querer sair
enum Numeros { Papel, Tesoura, Pedra, Sair }

void jogo() {
  bool validSair = true;
//loop que continua enquanto o usuário deseja continuar
  while (validSair == true) {
//exibe o menu
    stdout.writeln("Escolha Pedra(1), Papel(2), Tesoura(3) ou (4) para sair.");
    //captura a opção do usuário,validando
    var escolha = stdin.readLineSync();
    //se o usuario digitar 4, sair, senão
    if (escolha == 4) {
      validSair = false;
    }
    //sortear a opção do computador

    //mapear opção do usuario para enum

    // ~~ computador

    //exibir opcoes

    //jogador vs computador

    //verificar se houve empate ou se alguem venceu

    //mostrar resultado,claro

    //a cada rodada, durma 3 segundos para dar tempo de ver o resultado
  }
}
