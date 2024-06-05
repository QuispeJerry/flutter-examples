//actual
import 'package:flutter/material.dart';

void main() {
  runApp(const cards_3());
}

class cards_3 extends StatelessWidget {
  const cards_3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: contenedor_ventanas(),
      routes: {
        'screen1': (context) => card1(),
        'screen2': (context) => card2(),
        'screen3': (context) => card3(),
      },
    );
  }
}

class contenedor_ventanas extends StatelessWidget {
  const contenedor_ventanas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              buildCard(
                  context,
                  'https://www.shutterstock.com/image-illustration/view-waterfall-forest-600nw-2327645439.jpg',
                  'Ventana 1',
                  'screen1'),
              const SizedBox(width: 5),
              buildCard(
                  context,
                  'https://www.shutterstock.com/shutterstock/photos/2198245029/display_1500/stock-photo-autumn-nature-landscape-lake-bridge-in-fall-forest-path-way-in-gold-woods-romantic-view-image-2198245029.jpg',
                  'Ventana 2',
                  'screen2'),
              const SizedBox(width: 5),
              buildCard(
                  context,
                  'https://st5.depositphotos.com/64145070/64693/i/450/depositphotos_646930840-stock-photo-sunset-ocean-beach-beautiful-seascape.jpg',
                  'Ventana 3',
                  'screen3'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCard(
    BuildContext context, String imagenCard, String texto, String ruta) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, ruta);
    },
    child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width / 3 - 10,
          height: 200,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.network(
                imagenCard,
                fit: BoxFit.cover,
              )),
              //capa de opacidad
              Positioned.fill(
                  child: Container(
                color: Colors.black.withOpacity(0.6), // Capa negra con opacidad
              )),
              Center(
                child: Text(
                  texto,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        )),
  );
}

class card1 extends StatefulWidget {
  const card1({super.key});

  @override
  State<card1> createState() => _card1State();
}

class _card1State extends State<card1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('ventana 1'),
        ),
      ),
    );
  }
}

class card2 extends StatefulWidget {
  const card2({super.key});

  @override
  State<card2> createState() => _card2State();
}

class _card2State extends State<card2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('ventana 2'),
        ),
      ),
    );
  }
}

class card3 extends StatefulWidget {
  const card3({super.key});

  @override
  State<card3> createState() => _card3State();
}

class _card3State extends State<card3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('ventana 3'),
        ),
      ),
    );
  }
}
