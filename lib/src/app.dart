import 'package:flutter/material.dart';
import 'package:flutter_first_bloc_project/src/screens/login_screen.dart';

import 'blocs/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
        child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "log me in",
      home: Scaffold(
        body: LoginScreen(),
      ),
    ));
  }
}
