import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api.dart';

class App extends StatefulWidget{
  const App({super.key});

  @override
  State<App> createState(){
    return AppState();
  }
}


void obterImagem(){
  //url builder
  var api = Api();
  final url = Uri.https(
    'api.pexels.com',
    '/v1/search',
    {'query':'elevator','page': '1','per_page': '1'},
  );
  // http.get(Uri.parse('https://api.pexels.com/v1/search?query=people&per_page=1&page=1'));
  //request and header auth
  final request = http.Request('get', url);
  request.headers.addAll({'Authorization':api.getApi()});
  request.send().then((res){
    if(res.statusCode == 200){
    http.Response.fromStream(res).then((response){
      print(response.body);
    });
    }
    else{
      print('Falhou');
    }
  });
}



class AppState extends State <App>{
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Hello, Flutter'),),
        body: const Text(''),
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
        size:30,

        ),
        
        
        

      )
      )
    
  );
  }
}
