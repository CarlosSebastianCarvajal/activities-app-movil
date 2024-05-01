/*import 'package:flutter/material.dart';

class AlertScreen extends StatefulWidget {
  @override
  _AlertScreenState createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  Color _selectedColor = Color(0xFF0F8644);
  final List<String> colorNames = [
    "Green",
    "Purple",
    "Red",
    "Orange",
    "Caramel",
    "Light Green",
    "Blue",
    "Peach",
    "Gray"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              color: _selectedColor,
            ),
            RaisedButton(
              child: Text('Mostrar color favorito'),
              color: Colors.blue,
              textColor: Colors.white,
              shape:
                  StadiumBorder(), // Efecto de boton con borde redondeado, bien facil en flutter
              onPressed: () => _showColorDialog(context),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorDialog(BuildContext context) {
    Map<String, Color> _finalcolor = {
      "Green": Color(0xFF0F8644),
      "Purple": Color(0xFF8B1FA9),
      "Red": Color(0xFFD20100),
      "Orange": Color(0xFFFC571D),
      "Caramel": Color(0xFF85461E),
      "Light Green": Color(0xFF36B37B),
      "Blue": Color(0xFF3D4FB5),
      "Peach": Color(0xFFE47C73),
      "Gray": Color(0xFF636363),
    };

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Favorite Color'),
            content: Container(
              width: double.minPositive,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: colorNames.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(colorNames[index]),
                    onTap: () {
                      setState(() {});
                      _selectedColor = _finalcolor[colorNames[index]];
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
          );
        });
  }
}*/