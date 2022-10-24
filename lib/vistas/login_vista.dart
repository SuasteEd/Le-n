import 'package:examen2/datos/usuarios.dart';
import 'package:examen2/vistas/lista_vista.dart';
import 'package:examen2/vistas/registro_vista.dart';
import 'package:flutter/material.dart';

class LoginVista extends StatefulWidget {
  const LoginVista({Key? key}) : super(key: key);

  @override
  _LoginVistaState createState() => _LoginVistaState();
}

class _LoginVistaState extends State<LoginVista> {
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.lightGreen,
        body: Column(children: [
          const SizedBox(height: 80),
          Center(child: Image.asset('assets/leon.png', height: 300)),
          const SizedBox(height: 20),
          const Text(
            'Inicio de sesión',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: user,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Usuario'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  obscureText: true,
                  controller: password,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Contraseña'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              if (validar()) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const ListaVista()),
                    (route) => false);
              }
            },
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(12)),
              child: const Text(
                'Iniciar sesión',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('¿Crear una cuenta?  ',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistroVista()));
                },
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                      color: Color.fromARGB(255, 39, 90, 41),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  bool validar() {
    var sesion =
        usuarios.where((element) => element.usuario == user.text).toList();
    if (sesion.isNotEmpty) {
      var users = sesion[0];
      if (users.password == password.text) {
        return true;
      }
    }
    if (user.text.isEmpty || password.text.isEmpty) {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text('Campos vacíos'),
                content: Text('Llene todos los campos'),
              ));
      return false;
    }
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Incorrecto'),
              content: Text('Usuario o contraseña incorrectos'),
            ));
    return false;
  }
}
