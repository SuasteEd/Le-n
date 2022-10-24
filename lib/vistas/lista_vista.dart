import 'package:examen2/datos/usuarios.dart';
import 'package:examen2/vistas/detalle_vista.dart';
import 'package:examen2/vistas/login_vista.dart';
import 'package:flutter/material.dart';

class ListaVista extends StatefulWidget {
  const ListaVista({Key? key}) : super(key: key);

  @override
  _ListaVistaState createState() => _ListaVistaState();
}

class _ListaVistaState extends State<ListaVista> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('            Usuarios guardados'),
          leading: IconButton(
            icon: const Icon(Icons.logout_sharp),
            onPressed: (() => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginVista()))),
          ),
        ),
        body: ListView.builder(
          itemCount: usuarios.length,
          itemBuilder: (context, index) {
            var usuario = usuarios[index];
            return GestureDetector(
              onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetalleVista(user: usuario)))),
              child: ListTile(
                title: Text(usuario.nombre),
                subtitle: Text(usuario.escolaridad),
                leading: const Icon(
                  Icons.verified_user_outlined,
                  size: 30,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
