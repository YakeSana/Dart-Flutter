// // class Aluno{
// // }

// // main(){
// //   try{
// //     Aluno a;
// //     a.estudar();
// //   }
// //   catch(NullPointerException e)
// //   {}
// // }

// enum DiaDaSemana { SEGUNDA, TERCA }

// void main() {
//   const nomes = ["Miguel", "J", "Non"];

//   nomes.add('a');

//   // for(const nome in nomes){
//   //     print(nome);
//   // }

//   // for(final nome in nomes){
//   //     nomes.add('a');
//   //     print(nome);
//   // }

//   for (final nome in nomes) {
//     print(nome);
//   }

//   print(DiaDaSemana.values);
//   DiaDaSemana dia = DiaDaSemana.SEGUNDA;
//   switch (dia) {
//     case DiaDaSemana.SEGUNDA:
//       print('NAAAAAOOOOOOO');
//     case DiaDaSemana.TERCA:
//       print('T');
//     default:
//       print(':)');
//   }
// }

import 'dart:io';

void main() {
  stdout.writeln("Digite Seu Nome.");

  //Aceita null
  //String? nome = stdin.readLineSync();

  //
  String nome = stdin.readLineSync()!;

  //var nome = stdin.readLineSync();

  //int idade = int.parse(stdin.readLineSync()!);

  String? idadeOP = stdin.readLineSync();
  if (idadeOP != null) {
    int idade = int.parse(idadeOP);
  }
}
