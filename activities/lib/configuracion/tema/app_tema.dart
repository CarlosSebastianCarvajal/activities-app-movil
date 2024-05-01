import 'package:flutter/material.dart';


const Color customColor = Color.fromRGBO(241, 227, 68, 0);
const Color customColor1 = Color.fromARGB(0, 33, 33, 33);
const List<Color> colorTheme =[
  customColor,
  customColor1,
  Colors.blue,
  Colors.teal, 
  Color.fromARGB(255, 0, 140, 186),// 0, 140, 186
  Color.fromARGB(255, 105, 196, 108),//  27, 117, 5 
  Color.fromARGB(255, 27, 117, 5),
  Color.fromARGB(255, 251, 237, 109),
  Colors.orange,
  Colors.pink,
];

class AppTema{
  final int selectedColor;
  AppTema({
    this.selectedColor = 0
  }):assert(selectedColor >= 0, 'Color entre 0 y 7'),assert(selectedColor <= colorTheme.length - 1, 'Color debe ser entre 0 y 7');

  ThemeData theme(){
    return  ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorTheme[selectedColor]
    );
  }
}