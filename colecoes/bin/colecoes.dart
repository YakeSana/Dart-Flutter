void main(List<String> arguments) {
  var portugues = {'Brasil', 'Portugal'};

  var euro = {'Portugal', 'Alemanha', 'Espanah'};

  print(portugues.union(euro).difference(portugues.intersection(euro)));

  // var lembretes = {1: 'Fazer Café', 2: 'Ver um filme'};

  // for (final key in lembretes.keys) print(key);

  // for (final value in lembretes.values) print(value);

  // for (final entry in lembretes.entries) {
  //   print(entry.key);
  //   print(entry.value);
  // }
  // ;

  // // //mapas

  // var pessoa = <String, dynamic>{'nome': 'Pedro', 'idade': 22};

  // //type casting
  // var nome = pessoa['nome'] as String;
  // print(nome.toUpperCase());

  // var idade = pessoa['idade'] as String;
  // print(nome.toLowerCase());

  // var pessoa = <String?, Object?>{null:null};

  // var pessoa = {
  //   'nome': 'Ana',
  //   'nome': 18,
  // };

  // pessoa['nome'] = 'Ana Paula';
  // print(pessoa);

  // var pessoa = {'nome': 'Ana', 'idade': 18, 'altura': 1.8};

  // var lembretes = {1: 'Fazer Café', 2: 'Ir à feira'};

  // var A = {1, 2, 3, 4, 5, 6};
  // var B = {1, 3, 7};

  // //uniao
  // print(A.union(B));

  // //intersecção
  // print(A.intersection(B));

  // // A / B
  // print(A.difference(B));

  // // B / A
  // print(B.difference(A));

  // //type annotation
  // var nomes2 = <String>{"Ana"};

  // print(nomes2.elementAt(0));

  // //sem inferência
  // Set<String> nomes = {};

  // var tupla = ("Ana", 'João');
  // print(tupla.runtimeType);

  // print(tupla[1]);

  // print(tupla.$1);

  //List<String>? eAgora = null;

  //List<String?>? eAgora = null;

  //List<List<String?>>? eAgora = [["Lis1","List2"],["List3","List",null]];

  //type annotation
  // var nomes = <String?> [];
  // nomes.add(null);

  // var nomes = [];
  // nomes.add("ana");
  // nomes.add(null);

  // List<String?> nomes = ["Ana", "João"];
  // nomes.add(null);

  // //nomes = ["Pedro"];
  // nomes[0] = "Jaqueline";
  // print( nomes);

  // //inferência
  // var l1 = [2];
  // //dynamic
  // List l2 = [2];

  // var letras = ["A", "B"];
  // print(letras.isEmpty);
  // print(letras.isNotEmpty);
  // print(letras.reversed);
  // print(letras.first);
  // print(letras.firstOrNull);
  // print(letras.last);
  // print(letras.lastOrNull);

  // List<num> numeros = [1,1.1];
  // numeros.toString();
  // print(numeros[2]);

  // var nomes = ["Ana", "Pedro", 1];
  // nomes[1] = 2.4;
  // nomes[0].falar();
  //
  //
  // num sum = 0;
  // for(final arg in arguments){
  //   sum += int.parse(arg);
  // };
  // print(sum);

  // desafio
  // estudar como funciona a função for each que as listas
}
