import 'package:activities/presentacion/widgets/drawer_principal.dart';
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';


class Principal extends StatelessWidget {
  const Principal({super.key});

  /*
  final TextEditingController usuarioController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  */


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activities App'),
        backgroundColor: colorTheme[4],
        centerTitle: true,
      ),
      
      body: PopScope(
        canPop: true,
        onPopInvoked : (didPop){
        // logic
        }
        ,
        child: const Center( 
          child: Text('la pantalla principal'), 
         ),
      ),
      drawer: const DrawerPrincipal(),
    );

  }
}


