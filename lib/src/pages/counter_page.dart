// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Center(
          child: Text(
            "Contador",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Numero de Clicks',
              style: GoogleFonts.mysteryQuest(fontSize: 40),
            ),
            Text(
              '$_conteo',
              style: GoogleFonts.bungeeInline(
                  fontSize: 50, color: Colors.deepOrange),
            ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          width: 5,
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: _remover,
          backgroundColor: Colors.deepOrange,
          mini: true,
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: _agregar,
          backgroundColor: Colors.deepOrange,
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_zero),
          onPressed: _restablecer,
          backgroundColor: Colors.deepOrange,
          mini: true,
        )
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _remover() {
    setState(() => _conteo--);
  }

  void _restablecer() {
    setState(() => _conteo = 0);
  }
}
