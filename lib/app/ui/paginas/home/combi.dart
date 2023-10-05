import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta5.dart';
import 'package:rutapp/app/datos/ruta6.dart';

class Combi {
  final String nombre;
  final Set<Polyline> ruta;

  Combi(this.nombre, this.ruta);
}

// Lista de combis
final List<Combi> listaDeCombis = [
  Combi('RUTA XOCHIMILCO', polylineIdaXochi), // Ruta 1
  Combi('RUTA 2', polylineIDA2), // Ruta 2
  Combi('Ruta 5 de Febrero', polylineIDA3),
  Combi('Ruta 5', polylineIDA5),
  Combi('Ruta 6', polylineIDA6),
  // Agrega más combis según sea necesario
];
