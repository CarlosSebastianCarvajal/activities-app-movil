import 'package:activities/presentacion/widgets/cumplimiento_equipo_item.dart';
import 'package:activities/presentacion/widgets/drawer_principal.dart';
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';

class CumplimientosEquipos extends StatelessWidget{
  const CumplimientosEquipos({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos al que pertenezco'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: colorTheme[4],
      ),
      body: const _EquipoView(),
      drawer: const DrawerPrincipal(),
    );
  }
}

class _EquipoView extends StatelessWidget {
  const _EquipoView({
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
                  return const CumplimientoEquipoItem();
                }
              )
            ),
            
          ],
        ),
      ),
    );
  }
}