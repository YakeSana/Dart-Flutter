import 'package:flutter/material.dart';

class LoginTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),
          ],
        )
    );
  }

  Widget emailField(){
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'seuemail@email.com',
        border: OutlineInputBorder(),
        labelText: 'Digite seu e-mail' 
      ),
    );
  }

  Widget passwordField(){
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Digite Sua Senha'
      ),
    );
  }

  Widget submitButton(){
    return Container(
      margin:const EdgeInsets.only(top: 20.0),
      child: 
        ElevatedButton(
          onPressed: (){},
          child: const Text('Login')
      ),
    );
  }
}



