import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta5.dart';
import 'package:rutapp/app/datos/ruta6.dart';
import 'package:rutapp/app/datos/ruta7.dart';
import 'package:rutapp/app/datos/ruta8.dart';
import 'package:rutapp/app/datos/ruta9.dart';

class Combi {
  final String nombre;
  final Set<Polyline> ruta;

  Combi(this.nombre, this.ruta);
}

// Lista de combis
final List<Combi> listaDeCombis = [
  Combi('RUTA 1 Regreso', polylineIdaXochi), // Ruta 1
  Combi('RUTA 1 IDA', polylineRegreXochi),
  Combi('RUTA 2 IDA', polylineIDA2), // Ruta 2
  Combi('Ruta 2 Regreso', polylineREGRESO2),
  Combi('Ruta 5 de Febrero', polylineIDA3),
  Combi('Ruta 5 de Febrero Regreo', polylineREGRESO3),
  Combi('Ruta 5 IDA', polylineIDA5),
  Combi('Ruta 5 Regreso', polylineREGRESO5),
  Combi('Ruta 6 IDA', polylineIDA6),
  Combi('Ruta 6 Regreso', polylineIDA6REGRE),
  Combi('Ruta 7 IDA', polylineIDA7),
  Combi('Ruta 7 Regreso', polylineREGRESO7),
  Combi('Ruta 8 IDA', polylineIDA8),
  Combi('Ruta 8 REGRESO', polylineREGRESO8),
  Combi('Ruta 9 Derecha', polylineIDA9),
  Combi('Ruta 9 Izquierda', polylineREGRESO9),
  // Agrega más combis según sea necesario
];
