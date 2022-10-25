import 'package:examen2/datos/usuarios.dart';
import 'package:examen2/modelos/usuario.dart';
import 'package:examen2/vistas/login_vista.dart';
import 'package:flutter/material.dart';

class RegistroVista extends StatefulWidget {
  const RegistroVista({Key? key}) : super(key: key);

  @override
  _RegistroVistaState createState() => _RegistroVistaState();
}

class _RegistroVistaState extends State<RegistroVista> {
  TextEditingController user = TextEditingController();
  TextEditingController nombre = TextEditingController();
  TextEditingController password = TextEditingController();
  String? estadocivil;
  String estadoCivil = "";
  String escolaridad = "";
  String? valueItem;
  bool java = false;
  bool c = false;
  bool cc = false;
  String habilidades = "";
  List<String> items = <String>['Licenciatura', 'Maestría', 'Doctorado'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginVista()));
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
              const Text('                       Registro')
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Ingresa tus datos',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: nombre,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Nombre'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    controller: password,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Contraseña'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: DropdownButton(
                    underline: Container(
                      height: 60,
                      width: 60,
                      color: Colors.transparent,
                    ),
                    isExpanded: true,
                    value: valueItem,
                    hint: const Center(child: Text("Escolaridad")),
                    items: items
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        valueItem = value!;
                        escolaridad = valueItem!;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Soltero'),
                      Radio(
                        activeColor: Colors.green,
                        value: 'Soltero',
                        groupValue: estadocivil,
                        onChanged: (value) {
                          setState(() {
                            estadocivil = value.toString();
                            estadoCivil = estadocivil!;
                          });
                        },
                      ),
                      const Text('Casado'),
                      Radio(
                        activeColor: Colors.green,
                        value: 'Casado',
                        groupValue: estadocivil,
                        onChanged: (value) {
                          setState(() {});
                          estadocivil = value.toString();
                          estadoCivil = estadocivil!;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Java'),
                      Checkbox(
                        activeColor: Colors.green,
                        value: java,
                        onChanged: (bool? value) {
                          setState(() {
                            habilidades += 'Java ';
                            java = value!;
                          });
                        },
                      ),
                      const Text('C#'),
                      Checkbox(
                        activeColor: Colors.green,
                        value: c,
                        onChanged: (bool? value) {
                          setState(() {
                            habilidades += 'C# ';
                            c = value!;
                          });
                        },
                      ),
                      const Text('C++'),
                      Checkbox(
                        activeColor: Colors.green,
                        value: cc,
                        onChanged: (bool? value) {
                          setState(() {
                            habilidades += 'C++ ';
                            cc = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () async {
                if (await validar()) {
                  usuarios.add(Usuario(user.text, nombre.text, password.text,
                      estadoCivil, escolaridad, habilidades));
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginVista()),
                      (route) => false);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)),
                child: const Text(
                  'Registrarse',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> validar() async {
    if (user.text == "" ||
        nombre.text == "" ||
        password.text == "" ||
        escolaridad == "" ||
        estadoCivil == "") {
      await showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Error en registro"),
                content: Text("Debe completar todos los datos"),
              ));
      return false;
    }
    if (usuarios.where((element) => user.text == element.usuario).isNotEmpty) {
      await showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                title: Text("Error en registro"),
                content: Text("El usuario ya existe"),
              ));
      return false;
    }
    return true;
  }
}
