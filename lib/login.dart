import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login3/line_chart_sample10.dart';
import 'package:login3/xdxd.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  TextEditingController _usuarioController = TextEditingController();
  TextEditingController _contrasenaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: 600.0,
            vertical: 10.0
        ),
        children: <Widget> [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 115,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/cardiograma.png'),
              ),
              Text(
                'INGRESO',
                style: TextStyle(
                  fontFamily: 'Blacknorthdemo',
                  fontSize: 50.0,
                ),
              ),
              TextField(
                controller: _usuarioController,
                autofocus: true,
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15
                    ),
                    hintText: "Ingrese su nombre de usuario",
                    labelText: "Usuario",
                    suffixIcon: Icon(
                        Icons.verified_user
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    )
                ),
              ),
              Divider(
                height: 10,
              ),
              TextField(
                controller: _contrasenaController,
                decoration: InputDecoration(
                    hintText: "Ingrese su contraseña",
                    labelText: "Contraseña",
                    suffixIcon: Icon(
                        Icons.lock
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                    )
                ),
                obscureText: true,
              ),
              Divider(
                height: 10,
              ),
              SizedBox(
                width: 120,
                child: FloatingActionButton(
                  hoverColor: Colors.greenAccent[200],
                  onPressed: () async {
                    String usuario = _usuarioController.text;
                    String contrasena = _contrasenaController.text;

                    if (usuario.isNotEmpty && contrasena.isNotEmpty){
                      final route = MaterialPageRoute(builder: (context) => Wid());
                      Navigator.push(context, route);
                    } else{
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Error"),
                            content: Text("Por favor, completa todos los campos."),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Aceptar"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  backgroundColor: Colors.red[200],
                  child: Text('Ingresar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontFamily: 'Moonchild'
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
