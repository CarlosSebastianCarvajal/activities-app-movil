import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final  outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities App'),
        backgroundColor: colorTheme[4],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/fondo.jpg'), // Ruta de la imagen
                fit: BoxFit.cover,
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              children: [
                const SizedBox(height: 25),
                  Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // ignore: prefer_const_constructors
                      color: Color.fromARGB(48, 0, 0, 0),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Campos de entrada para el usuario y la contraseña
                          const Text(
                            'Registrarse',
                            style: TextStyle(
                              fontSize: 30.0
                            ),),
                          const SizedBox(height: 30),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Ingrese sus nombres',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
              
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Ingrese sus apellidos',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
              
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Ingrese su correo',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Ingrese numero de telefono',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Fecha de nacimiento',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Dirección',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Ciudad',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Pais',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: passwordController,
                              obscureText: true, // Oculta el texto de la contraseña
                              decoration:  InputDecoration(
                                  labelText: 'Contraseña',
                                  enabledBorder: outlineInputBorder,
                                  focusedBorder: outlineInputBorder,
                                  filled: true,
                                ),
                            ),
                          const SizedBox(height: 10),
                          TextFormField(
                            controller: passwordController,
                              obscureText: true, // Oculta el texto de la contraseña
                              decoration:  InputDecoration(
                                  labelText: 'Repita la contraseña',
                                  enabledBorder: outlineInputBorder,
                                  focusedBorder: outlineInputBorder,
                                  filled: true,
                                ),
                            ),
                          const SizedBox(height: 25),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                //String usuario = usuarioController.text;
                                //String password = passwordController.text;
                                // Aquí puedes utilizar usuario y contraseña como desees
                                //print('Usuario: $usuario, Contraseña: $password');
                                //usuarioController.clear();
                                //passwordController.clear();
                                Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(colorTheme[4]),
                                shape: MaterialStateProperty.all(
                                  // ignore: prefer_const_constructors
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),// Bordes rectos
                                  ),
                                ),
                              ),
                              child: const Text('Guardar Datos', style: TextStyle(color: Colors.white),),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
