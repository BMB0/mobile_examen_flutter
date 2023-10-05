import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  void _signInWithFacebook() {
    print('Inicio de sesión con Facebook...');
  }

  void _signInWithGoogle() {
    print('Inicio de sesión con Google...');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Correo'),
              validator: (value) =>
                  value!.isEmpty ? 'El correo no puede estar vacío' : null,
              onSaved: (value) => _email = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
              validator: (value) =>
                  value!.isEmpty ? 'La contraseña no puede estar vacía' : null,
              onSaved: (value) => _password = value!,
            ),
            ElevatedButton(
              child: const Text('Iniciar sesión'),
              onPressed: () => Navigator.pushNamed(context, '/profile'),
            ),
            ElevatedButton(
              child: const Text('Recuperar contraseña'),
              onPressed: () => Navigator.pushNamed(context, '/reset_password'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton.icon(
                  icon: const Icon(Icons.facebook),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 10, 101, 175)),
                  onPressed: _signInWithFacebook,
                  label: const Text('Facebook'),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.email),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: _signInWithGoogle,
                  label: const Text('Google'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
