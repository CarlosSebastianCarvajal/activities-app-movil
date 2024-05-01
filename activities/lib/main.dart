import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';
import 'package:activities/presentacion/pantallas/inicio_de_sesion.dart';
import 'package:activities/presentacion/pantallas/principal.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //verifico la sesion
    String rutaInicial;
    if(comprobarSesion()){
      rutaInicial = 'principal';
    }else{
      rutaInicial = 'login';
    }
    
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTema(selectedColor: 4).theme(),
      title: 'Activities App',
      //home:  const Principal(),
      initialRoute: rutaInicial,
      routes: {
        'principal':(context) => const Principal(),
        'login':(context) =>  InicioDeSesion(),
      },
    );
  }

  bool comprobarSesion(){
    return false;
  }
}