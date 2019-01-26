import 'package:flutter/material.dart';
import 'package:login_bloc/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log me In',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log me In'),
          backgroundColor: Colors.blueGrey,
          elevation: 0.0,
        ),
        body: LoginScreen(),
      ),
    );
  }
}