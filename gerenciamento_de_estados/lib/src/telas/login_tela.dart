import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

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
        ));
  }

  Widget emailField() {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, AsyncSnapshot<String> snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                hintText: 'seuemail@email.com',
                border: OutlineInputBorder(),
                labelText: 'Digite seu e-mail',       
                errorText: snapshot.hasError?snapshot.error.toString():null,
            ),
          );

        }
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, AsyncSnapshot<String>snapshot){
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
          border: const OutlineInputBorder(), labelText: 'Digite Sua Senha',
          errorText: snapshot.error?.toString()
          )
        );
      }
    );
  }

  Widget submitButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
    );
  }
}
