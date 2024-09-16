import 'package:exibe_imagens/model/image_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'widgets/image_list.dart';
import 'dart:convert';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 0;
  List<ImageModel> imagens = [];

  void obterImagem() async {
    //url builder

    final url = Uri.https(
      'api.pexels.com',
      '/v1/search',
      {'query': 'elevator', 'page': '$numeroImagens', 'per_page': '1'},
    );
    // http.get(Uri.parse('https://api.pexels.com/v1/search?query=people&per_page=1&page=1'));
    //request and header auth
    final request = await http.Request('get', url);
    request.headers.addAll({'Authorization': 'api'});
    final res = await request.send();
    if (res.statusCode == 200) {
      final response = await http.Response.fromStream(res);
      var decodedJSON = json.decode(response.body);
      var imagem = ImageModel.fromJSON(decodedJSON);
      setState(() {
        imagens.add(imagem);
        numeroImagens++;
      });
    } else {
      print('Falhou');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Hello, Flutter'),
            ),
            body: ImageList(imagens),
            floatingActionButton: const FloatingActionButton(
              onPressed: obterImagem,

              // ) {
              //   setState((){
              //     numeroImagens++;
              //   });
              // },
              child: Icon(
                Icons.add,
                color: Color.fromARGB(255, 16, 179, 43),
                size: 30,
              ),
            )));
  }
}
