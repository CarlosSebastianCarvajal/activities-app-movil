
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';

class DetalleCumplimientoActividadEquipo extends StatelessWidget{
  const DetalleCumplimientoActividadEquipo({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de Actividad'),
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
          height: 1000,
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
                      color: Color.fromARGB(24, 0, 0, 0),
                      ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Campos de entrada para el usuario y la contraseña
                          const Text(
                            'Nombre de Actividad En Grupo',
                            style: TextStyle(
                              fontSize: 20.0
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Descripcion.. Amet cupidatat cupidatat proident dolore. Ad esse incididunt veniam occaecat voluptate sint. Enim incididunt proident ipsum esse consequat aliquip culpa sint duis ut nulla dolore quis. Ex veniam aliqua irure qui velit consequat quis dolor anim consequat.',
                            style: TextStyle(
                              fontSize: 12.0
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Quevedo, Ecuador',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontStyle: FontStyle.italic
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Fecha límite: 26/02/2024',
                              style: TextStyle(
                                fontSize: 14.0
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Estado: Pendiente',
                              style: TextStyle(
                                fontSize: 14.0
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              //aqui la logica de abrir el documento
                            },
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                // ignore: prefer_const_constructors
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),// Bordes rectos
                                ),
                              ),
                            ),
                            child: const  Text('Abrir Documento Guía'),
                          ),
                        ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                            height: 1,
                            color: Colors.black54,
                            child: const SizedBox(height: 1)),
                          const SizedBox(height: 15),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Observacion',
                              enabledBorder: outlineInputBorder,
                              focusedBorder: outlineInputBorder,
                              filled: true,
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            //controller: usuarioController,
                            decoration:  InputDecoration(
                              labelText: 'Documento Evidencia',
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
                              child: const Text('Registrar Cumplimiento', style: TextStyle(color: Colors.white),),
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