import 'package:activities/presentacion/pantallas/listas/cumplimiento_equipos.dart';
import 'package:activities/presentacion/pantallas/listas/mis_actividades.dart';
import 'package:activities/presentacion/pantallas/listas/mis_equipos.dart';
import 'package:activities/presentacion/pantallas/principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class DrawerPrincipal extends StatelessWidget{
  const DrawerPrincipal({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
           UserAccountsDrawerHeader(
            accountName: 
            Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: prefer_const_constructors
                      color: Color.fromARGB(48, 0, 0, 0),
                      ),
                    child: const Text(
              "Sebastian Carvajal",
              style: TextStyle(
                fontSize: 21,
                fontStyle: FontStyle.normal,
                color: Colors.black
              ),
            ),), 
            
            accountEmail:
            Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // ignore: prefer_const_constructors
                      color: Color.fromARGB(48, 0, 0, 0),
                      ),
                    child: const Text(
              "sebas@gmail.com",
              style: TextStyle(
                fontSize: 15,
                fontStyle: FontStyle.normal,
                color: Colors.white
              ),
            ),),
            
          
            currentAccountPicture:  const ClipOval(
              child: Image(
                image: NetworkImage("https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_640.png"),
                  fit: BoxFit.cover,
                  )
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/countpaper6.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Principal()));
            },
            title: const Text('Inicio',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: const Icon(
              Icons.home,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MisAcividades()));
            },
            title: const Text('Mis Actividades',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: const Icon(
              Icons.local_activity,
            ),
          ),
          ListTile(
            onTap: (){
              //CumplimientosEquipos
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CumplimientosEquipos()));
            },
            title: const Text('Cumplimiento en Equipos',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: const Icon(
              Icons.local_activity_outlined,
            ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const MisEquipos()));
            },
            title: const Text('Mis Equipos',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: const Icon(
              Icons.group,
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            height: 1,
            color: Colors.black54,
            child: const SizedBox(height: 1)),
          const SizedBox(height: 15),
          ListTile(
            title: const Text('Salir de la aplicación',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: const Icon(
              Icons.exit_to_app,
            ),
            onTap: (){
              SystemNavigator.pop();
            },
          ),
          const ListTile(
            title: Text('Cerrar sesion',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
              ),
            leading: Icon(
              Icons.logout,
            ),
          ), 
        ],
      ),
    );
  }
}
