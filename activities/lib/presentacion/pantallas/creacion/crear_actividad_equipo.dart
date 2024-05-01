
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';

class CrearActividadEquipo extends StatelessWidget{
  const CrearActividadEquipo({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Actividad en Equipo'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: colorTheme[4],
      ),
      body:  const _CreacionActividad(),
      
    );
  }
}

class _CreacionActividad extends StatelessWidget {
  const _CreacionActividad({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final  outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(20)
    );
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Container(
          height: 725,
            decoration: const BoxDecoration(
              color: Colors.white,
              /*image: DecorationImage(
                
                image: AssetImage('asset/fondo.jpg'), // Ruta de la imagen
                fit: BoxFit.cover,
              ),*/
            ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              
              children: [
                const SizedBox(height: 1),
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
                            'Ingrese los datos',
                            style: TextStyle(
                              fontSize: 20.0
                            ),),
                          const SizedBox(height: 30),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Nombre de actividad',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
              
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Descripción',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
              
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Fecha Culminación',
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
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Archivo Guía',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
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
                              child: const Text('Guardar Actividad', style: TextStyle(color: Colors.white),),
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