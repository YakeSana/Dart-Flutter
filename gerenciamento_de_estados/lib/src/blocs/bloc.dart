import 'dart:async';

import 'package:gerenciamento_de_estados/src/blocs/validators.dart';

class Bloc with Validators{
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  Function(String) get changeEmail => _emailController.sink.add; 

  Function(String) get changePassword => _passwordController.sink.add; 

  Stream <String> get email => _emailController.stream.transform(validateMail);

  Stream <String> get password => _passwordController.stream.transform(validatePassword);

  void dispose(){
  
  }
}