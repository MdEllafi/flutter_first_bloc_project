import 'dart:async';

import 'package:flutter_first_bloc_project/src/blocs/validator.dart';

class Bloc extends Validator {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

  //set Data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  //get data
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _passwordController.stream.transform(validatePassword);

  //Close streams
  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

// final bloc = Bloc();
