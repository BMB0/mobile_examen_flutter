import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String _imageUrl =
      'https://media.tenor.com/Y2SbeMmjNE4AAAAC/smug-smug-idiot.gif';
  String _nick = 'Smug Cat';
  String _email = 'smug_cat@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil de Usuario'),
      ),
      body: Column(
        children: <Widget>[
          Image.network(_imageUrl),
          Text('Nick: $_nick'),
          Text('Correo: $_email'),
          ElevatedButton(
            child: const Text('Editar Usuario'),
            onPressed: () {
              print("Entra a pantalla de editar usuario");
            },
          ),
        ],
      ),
    );
  }
}
