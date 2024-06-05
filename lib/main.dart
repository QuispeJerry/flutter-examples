import 'package:flutter/material.dart';

void main() {
  runApp(const columnas_3());
}

class columnas_3 extends StatelessWidget {
  const columnas_3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: columna_3(),
    );
  }
}


class columna_3 extends StatefulWidget {
  const columna_3({super.key});

  @override
  State<columna_3> createState() => _columna_3State();
}

class _columna_3State extends State<columna_3> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 32, 196, 73),
                height: 100,
                width: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 62, 206, 231),
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      )
    );
  }
}