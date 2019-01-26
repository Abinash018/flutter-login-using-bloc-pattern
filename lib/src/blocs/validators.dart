import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
    email.contains('@')
        ? sink.add(email)
        : sink.addError('Enter a valid email');
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, EventSink<String> sink) {
    password.length > 3
        ? sink.add(password)
        : sink.addError('Password should be atleast 4 characters');
  });
}
