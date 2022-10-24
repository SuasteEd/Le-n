import 'package:examen2/modelos/usuario.dart';
import 'package:flutter/material.dart';

class DetalleVista extends StatelessWidget {
  DetalleVista({Key? key, required this.user}) : super(key: key);
  Usuario user;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Detalles'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Center(
              child: Text(
            'Nombre: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child: Text(user.nombre, style: const TextStyle(fontSize: 20))),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            'Usuario: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child: Text(user.usuario, style: const TextStyle(fontSize: 20))),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            'Estado civil: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child:
                  Text(user.estadoCivil, style: const TextStyle(fontSize: 20))),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            'Escolaridad: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child:
                  Text(user.escolaridad, style: const TextStyle(fontSize: 20))),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: Text(
            'Habilidades: ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          )),
          Center(
              child:
                  Text(user.habilidades, style: const TextStyle(fontSize: 20))),
        ]),
      ),
    );
  }
}
