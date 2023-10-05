import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  late String _currentPassword;
  late String _newPassword;
  late String _confirmNewPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperar Contraseña'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(labelText: 'Contraseña Actual'),
              obscureText: true,
              validator: (value) => value!.isEmpty
                  ? 'La contraseña actual no puede estar vacía'
                  : null,
              onSaved: (value) => _currentPassword = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nueva Contraseña'),
              obscureText: true,
              validator: (value) => value!.isEmpty
                  ? 'La nueva contraseña no puede estar vacía'
                  : null,
              onSaved: (value) => _newPassword = value!,
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Repetir Nueva Contraseña'),
              obscureText: true,
              validator: (value) =>
                  value != _newPassword ? 'Las contraseñas no coinciden' : null,
              onSaved: (value) => _confirmNewPassword = value!,
            ),
            ElevatedButton(
              child: const Text('Realizar Cambio'),
              onPressed: () {
                print("Se realiza el cambio y se recupera la contraseña");
              },
            ),
          ],
        ),
      ),
    );
  }
}
