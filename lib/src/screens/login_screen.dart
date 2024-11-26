import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [emilField(), passwordfield(), submitBtn()],
      ),
    );
  }

  Widget emilField() {
    return const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: "you@example.com",
          hintStyle: TextStyle(color: Colors.grey),
          labelText: "Email Address"),
    );
  }

  Widget passwordfield() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'password',
          hintStyle: TextStyle(color: Colors.grey),
          labelText: 'password'),
    );
  }

  Widget submitBtn() {
    return TextButton(
      onPressed: () {},
      child: const Text("Submit"),
    );
  }
}
