import 'package:flutter/material.dart';
import 'package:mobile_examen_flutter/login.dart';
import 'package:mobile_examen_flutter/profile.dart';
import 'package:mobile_examen_flutter/reset_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Inicia la aplicación en la pantalla de Login
      routes: {
        '/login': (context) => LoginPage(),
        '/reset_password': (context) => ResetPasswordPage(),
        '/profile': (context) => ProfilePage(),
      },
    );
  }
}
