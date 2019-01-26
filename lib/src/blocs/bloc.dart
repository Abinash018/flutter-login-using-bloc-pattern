import 'dart:async';
import 'package:login_bloc/src/blocs/validators.dart';

class Bloc extends Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  void dispose() {
    _email.close();
    _password.close();
  }

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;
}

final bloc = Bloc();
