import 'package:flutter/material.dart';

class DobleMeitatScreen extends StatefulWidget {
  @override
  _DobleMeitatScreenState createState() => _DobleMeitatScreenState();
}

class _DobleMeitatScreenState extends State<DobleMeitatScreen> {
  double valor = 1.0;

  void aplicarDoble() {
    setState(() {
      valor *= 2;
    });
  }

  void aplicarMeitat() {
    setState(() {
      valor /= 2;
    });
  }

  void inicialitzar() {
    setState(() {
      valor = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Doble i Meitat per Arnau Gallego',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Prem el botó que vulguis',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Valor actual: $valor',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: aplicarMeitat,
                  icon: Icon(Icons.swipe_down),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent, // Color de fons
                    foregroundColor: Colors.white, // Color del text
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton.icon(
                  onPressed: inicialitzar,
                  icon: Icon(Icons.circle_outlined),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellowAccent, // Color de fons
                    foregroundColor: Colors.black, // Color del text
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton.icon(
                  onPressed: aplicarDoble,
                  icon: Icon(Icons.swipe_up),
                  label: Text(''),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Color de fons
                    foregroundColor: Colors.white, // Color del text
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
