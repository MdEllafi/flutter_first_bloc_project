import 'package:flutter/material.dart';
import 'package:flutter_first_bloc_project/src/blocs/bloc.dart';
import 'package:flutter_first_bloc_project/src/blocs/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [emilField(bloc), passwordfield(bloc), submitBtn()],
      ),
    );
  }

  Widget emilField(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changeEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "you@example.com",
              hintStyle: const TextStyle(color: Colors.grey),
              labelText: "Email Address",
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
          );
        });
  }

  Widget passwordfield(Bloc bloc) {
    return StreamBuilder(
        stream: bloc.password,
        builder: (context, snapshot) {
          return TextField(
            onChanged: bloc.changePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'password',
              hintStyle: const TextStyle(color: Colors.grey),
              labelText: 'password',
              errorText: snapshot.hasError ? snapshot.error.toString() : null,
            ),
          );
        });
  }

  Widget submitBtn() {
    return TextButton(
      onPressed: () {},
      child: const Text("Submit"),
    );
  }
}
