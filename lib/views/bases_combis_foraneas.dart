import 'package:flutter/material.dart';

class BasesCombi extends StatefulWidget {
  const BasesCombi({super.key});

  @override
  State<BasesCombi> createState() => _BasesCombiState();
}

class _BasesCombiState extends State<BasesCombi> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("AQUI IRA EL MAPA, MARCANDO SOLO LAS BASES DE LAS COMBIS"),
        ],
      )),
    );
  }
}
