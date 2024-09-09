import 'dart:convert';

void main(){
  //adicionar preco a cada veiculo
  //mostra o preco medio no final
  var veiculosJSON = '''[
    {
      'modelo':'fusca',
      'preço':''
    },
    {
      'modelo':'brasilia',
      'preço':''
    },
  ] ''';
  
  var veiculos = json.decode(veiculosJSON);
  for (var veiculo in veiculos){
    print(veiculo);
  }
  
  
  
  // var pessoaJSON = '{"nome":"Ana","idade":18}';
  // var pessoa = json.decode(pessoaJSON);
  // print(pessoa['nome']);
  // print(pessoa['idade']);




var string ="""{
  'concessionária':'concessionária'
  'CNPJ':'123412341234'
  'Filiais':[
    {
      'nome': 'Filial 1'
      'endereço':[
        {
          'logradouro':
          'número':
          'bairro':
        }
      ],
      'veiculos':[
        {
          'modelo': '' ,
          'placa': ''  ,
          'marca':
        },
        {
          'modelo': '' ,
          'placa':  '' ,
          'marca':
        }

      ]

    },
    {
      'nome': 'Filial 2'
      'endereço':[
        {
          'logradouro':'',
          'número':'',
          'bairro':''
        }
      ],
      'veiculos':[
        {
          'modelo':'',
          'placa':'',
          'marca':''
        },
        {
          'modelo':'',
          'placa':'',
          'marca':''
        }

      ]

    }
  ]
}""";
}