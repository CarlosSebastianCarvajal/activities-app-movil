import 'package:activities/presentacion/pantallas/detalle_culminar/detalle_actividad_equipo.dart';
import 'package:flutter/material.dart';

class EquipoActividadItem extends StatelessWidget{

  const EquipoActividadItem({
    super.key,
  });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetalleActividadEquipo()));
      },
      child: Column(
        children: [
          Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              //color: const Color.fromARGB(255, 232, 240, 234),
              color: const Color.fromARGB(255, 255, 255, 255),
              border: Border.all(
                width: 1,
                color: const Color.fromARGB(255, 197, 197, 197),
              ),
            ),
      
              child:  Column(
                children: [
                  Container(
                    decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(19)),
                      //color: Color.fromARGB(255, 232, 240, 234),
                      color: Color.fromARGB(255, 197, 197, 197),
                    ),
                    // ignore: prefer_const_constructors
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            'Título de actividad',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    //padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                          'Lorem ipsum: Amet enim veniam consectetur do commodo dolor do Lorem. Elit Lorem est ea mollit. Culpa est et voluptate velit mollit mollit reprehenderit ea laboris ullamco ad. Excepteur minim duis non Lorem ea eiusmod qui pariatur irure mollit Lorem ea. Sunt sit est ut voluptate voluptate ipsum laboris tempor sint et. Amet nisi velit quis enim laborum ea nulla reprehenderit cupidatat officia veniam cupidatat.',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          maxLines: 3,
                        ),
                    ),
                  ),
                  
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Vence: 24-02-2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Cumplimiento: 1/4',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )
                      ),
                    ),
                  ),
                ],
              )
            ),
       
          const SizedBox(height: 10),
        ],
      ),
    );
  }

}