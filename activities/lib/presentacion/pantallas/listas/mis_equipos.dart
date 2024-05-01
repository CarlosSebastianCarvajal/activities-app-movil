import 'package:activities/presentacion/widgets/boto_flotante.dart';
import 'package:activities/presentacion/widgets/drawer_principal.dart';
import 'package:activities/presentacion/widgets/equipo_item.dart';
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';
import 'package:activities/presentacion/pantallas/creacion/crear_equipo_trabajo.dart';

class MisEquipos extends StatelessWidget{
  const MisEquipos({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Equipos'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: colorTheme[4],
      ),
      body: const _ActividadView(),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BotonFlotante( 
              icon: Icons.add_outlined,
              onPressed: (){
                // Aqui redirigo a la pantalla de crear
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const CrearEquipoTrabajo()));
              },),
            const SizedBox(
              height:10
            ),
          ],
      ),
      drawer: const DrawerPrincipal(),
    );
  }
}

class _ActividadView extends StatelessWidget {
  const _ActividadView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                //controller: chatProvider.chatScrollController,
                itemCount: 5,//chatProvider.messageList.length,
                itemBuilder: (context, index){
                  //final message = chatProvider.messageList[index];
                  //Por aqui debe ir la logica de lectura de las activiades del usuario
                  return const EquipoItem();
                }
              )
            ),
            
          ],
        ),
      ),
    );
  }
}