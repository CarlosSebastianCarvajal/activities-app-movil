import 'package:activities/presentacion/widgets/cumplimiento_equipo_actividad_item.dart';
import 'package:flutter/material.dart';
import 'package:activities/configuracion/tema/app_tema.dart';


class CumplimientoEquiposAcividades extends StatelessWidget{
  const CumplimientoEquiposAcividades({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Actividades del equipo'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: colorTheme[4],
      ),
      body: const _ActividadView(),
      
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
                  return const CumplimientoEquipoActividadItem();
                }
              )
            ),
            
          ],
        ),
      ),
    );
  }
}