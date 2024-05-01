import 'package:activities/presentacion/pantallas/principal.dart';
import 'package:flutter/material.dart';
import 'package:activities/presentacion/pantallas/registrarse.dart';
import 'package:activities/configuracion/tema/app_tema.dart';

class InicioDeSesion extends StatelessWidget {
  InicioDeSesion({super.key});

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
        backgroundColor: colorTheme[4]
      ),
      
      body: SingleChildScrollView(
        
        child: Container(
          height: 1100,
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
                const SizedBox(height: 125),
                Container(
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(48, 0, 0, 0),
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Campos de entrada para el usuario y la contraseña
                        const Text(
                          'Inicio de sesión',
                          style: TextStyle(
                            fontSize: 30.0
                          ),),
                        const SizedBox(height: 30),
                        TextFormField(
                          controller: usuarioController,
                          decoration:  InputDecoration(
                            labelText: 'Ingrese su usuario',
                            enabledBorder: outlineInputBorder,
                            focusedBorder: outlineInputBorder,
                            filled: true,
                          ),
                          onFieldSubmitted: (value){
                              usuarioController.clear();
                          },
            
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
                        const SizedBox(height: 25),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              String usuario = usuarioController.text;
                              String password = passwordController.text;
                              // Aquí puedes utilizar usuario y contraseña como desees
                              print('Usuario: $usuario, Contraseña: $password');
                              usuarioController.clear();
                              passwordController.clear();

                              //El ingreso Navigator.
                              Navigator.pushAndRemoveUntil<void>(
                                context,
                                MaterialPageRoute<void>(builder: (BuildContext context) => const Principal()),
                                ModalRoute.withName('/'),
                              );
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
                            child: const Text('Ingresar a la aplicación', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              usuarioController.clear();
                              passwordController.clear();
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  RegisterPage()),
                              );
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                // ignore: prefer_const_constructors
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),// Bordes rectos
                                ),
                              ),
                            ),
                            child: const  Text('Registrarse'),
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
