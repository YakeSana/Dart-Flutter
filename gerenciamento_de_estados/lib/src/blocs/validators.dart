import 'package:email_validator/email_validator.dart';
import 'dart:async';

mixin Validators{
  final validateMail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email,sink){
      if(EmailValidator.validate(email)){
        sink.add(email);
      }
      else{
        sink.addError('Email Inválido');
      }
    }
  );

  final validatePassword = StreamTransformer<String,String>.fromHandlers(
    handleData: (password, sink){
      password.isNotEmpty?sink.add(password):sink.addError('Senha Vazia');
    }
  );
}