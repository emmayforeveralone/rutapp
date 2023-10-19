import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta40.dart';
import 'package:rutapp/app/datos/ruta40regreso.dart';
import 'package:rutapp/app/datos/ruta41.dart';
import 'package:rutapp/app/datos/ruta41regreso.dart';
import 'package:rutapp/app/datos/ruta42.dart';
import 'package:rutapp/app/datos/ruta42regreso.dart';
import 'package:rutapp/app/datos/ruta43.dart';
import 'package:rutapp/app/datos/ruta43regreso.dart';
import 'package:rutapp/app/datos/ruta44.dart';
import 'package:rutapp/app/datos/ruta45.dart';
import 'package:rutapp/app/datos/ruta46.dart';
import 'package:rutapp/app/datos/ruta47.dart';
import 'package:rutapp/app/datos/ruta47regreso.dart';
import 'package:rutapp/app/datos/ruta49.dart';
import 'package:rutapp/app/datos/ruta49regreso.dart';
import 'package:rutapp/app/datos/ruta5.dart';
import 'package:rutapp/app/datos/ruta6.dart';
import 'package:rutapp/app/datos/ruta7.dart';
import 'package:rutapp/app/datos/ruta8.dart';
import 'package:rutapp/app/datos/ruta9.dart';
import 'package:rutapp/app/datos/ruta11.dart';
import 'package:rutapp/app/datos/ruta12.dart';
import 'package:rutapp/app/datos/ruta13.dart';
import 'package:rutapp/app/datos/ruta14.dart';
import 'package:rutapp/app/datos/ruta15.dart';
import 'package:rutapp/app/datos/ruta16.dart';
import 'package:rutapp/app/datos/ruta17.dart';
import 'package:rutapp/app/datos/ruta18.dart';
import 'package:rutapp/app/datos/ruta19.dart';
import 'package:rutapp/app/datos/ruta20.dart';

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
  Combi('Ruta 2 Regreso', polylineREGRESO2),//
  Combi('Ruta 5 de Febrero', polylineIDA3),//
  Combi('Ruta 5 de Febrero Regreo', polylineREGRESO3),//
  Combi('Ruta 5 IDA', polylineIDA5),//
  Combi('Ruta 5 Regreso', polylineREGRESO5),//
  Combi('Ruta 6 IDA', polylineIDA6),//
  Combi('Ruta 6 Regreso', polylineIDA6REGRE),//
  Combi('Ruta 7 IDA', polylineIDA7),//
  Combi('Ruta 7 Regreso', polylineREGRESO7),//
  Combi('Ruta 8 IDA', polylineIDA8),//
  Combi('Ruta 8 REGRESO', polylineREGRESO8),//
  Combi('Ruta 9 Derecha', polylineIDA9),//
  Combi('Ruta 9 Izquierda', polylineREGRESO9),//
  Combi('Ruta 11 Ida', polylineIDA11),//
  Combi('Ruta 11 Regreso', polyline11REGRESO),//
  Combi('Ruta 12', polylineIDA12),//
  Combi('Ruta 12 Regreso', polyline12REGRESO),//
  Combi('Ruta 13', polylineIDA13),//
  Combi('Ruta 13 Regreso', polyline13REGRESO),//
  Combi('Ruta 14', polylineIDA14),//
  Combi('Ruta 14 Regreso', polyline14REGRESO),//
  Combi('Ruta 15', polylineIDA15),//
  Combi('Ruta 16', polylineIDA16),//
  Combi('Ruta 17', polylineIDA17),//
  Combi('Ruta 17 Regreso', polyline17REGRESO),//
  Combi('Ruta 18', polylineIDA18),//
  Combi('Ruta 18 Regreso', polyline18REGRESO),//
  Combi('Ruta 19', polylineIDA19),//
  Combi('Ruta 19 Regreso', polyline19REGRESO),//
  Combi('Ruta 20', polylineIDA20),//
  Combi('Ruta 20 Regreso', polylineI20REGRESO),//
  Combi('Ruta 40 Ida', polylineIDA40),//
  Combi('Ruta 40 Regreso', polylineregreso40),//
  Combi('Ruta 41 Ida', polylineIDA41),//
  Combi('Ruta 41 Regreso', polylineIDA41Regreso),//
  Combi('Ruta 42 Ida', polylineIDA42),//
  Combi('Ruta 42 Regreso', polylineIDA42Regreso),//
  Combi('Ruta 43 Ida', polylineIDA43),//
  Combi('Ruta 43 Regreso', polylineIDA43Regreso),//
  Combi('Ruta 44 Ida', polylineIDA44),//
  Combi('Ruta 45 Ida', polylineIDA45),//
  Combi('Ruta 46 ida', polylineIDA46),//
  Combi('Ruta 47 Ida', polylineIDA47),//
  Combi('Ruta 47 Regreso', polylineIDA47Regreso),//
  Combi('Ruta 49 Ida', polylineIDA49),//
  Combi('Ruta 49 Regreso', polylineIDA49Regreso),//

  // Agrega más combis según sea necesario
];
