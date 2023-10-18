import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta5.dart';
import 'package:rutapp/app/datos/ruta21ida.dart';
import 'package:rutapp/app/datos/ruta22ida.dart';
import 'package:rutapp/app/datos/ruta23.dart';
import 'package:rutapp/app/datos/ruta24ida.dart';
import 'package:rutapp/app/datos/ruta25ida.dart';
import 'package:rutapp/app/datos/ruta26.dart';
import 'package:rutapp/app/datos/ruta27ida.dart';
import 'package:rutapp/app/datos/ruta28ida.dart';
import 'package:rutapp/app/datos/ruta29ida.dart';
import 'package:rutapp/app/datos/ruta30ida.dart';
import 'package:rutapp/app/datos/ruta21regreso.dart';
import 'package:rutapp/app/datos/ruta22regreso.dart';
import 'package:rutapp/app/datos/ruta23regreso.dart';
import 'package:rutapp/app/datos/ruta24regreso.dart';
import 'package:rutapp/app/datos/ruta25regreso.dart';
import 'package:rutapp/app/datos/ruta27regreso.dart';
import 'package:rutapp/app/datos/ruta28regreso.dart';
import 'package:rutapp/app/datos/ruta29regreso.dart';
import 'package:rutapp/app/datos/ruta30regreso.dart';

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
  Combi('Ruta 21 Ida', polylineIDA21),
  Combi('Ruta 21 Regreso', polylineREGRESO21),
  Combi('Ruta 22 Ida', polylineIDA22),
  Combi('Ruta 22 Regreso', polylineREGRESO22),
  Combi('Ruta 23', polylineIDA23),
  Combi('Ruta 23 Extension', polylineREGRESO23),
  Combi('Ruta 24 Ida', polylineIDA24),
  Combi('Ruta 24 Regreso', polylineREGRESO24),
  Combi('Ruta 25 Ida', polylineIDA25),
  Combi('Ruta 25 Regreso', polylineREGRESO25),
  Combi('Ruta 26', polyline26),
  Combi('Ruta 27 Ida', polylineIDA27),
  Combi('Ruta 27 Regreso', polylineREGRESO27),
  Combi('Ruta 28 Ida', polylineIDA28),
  Combi('Ruta 28 Regreso', polylineREGRESO28),
  Combi('Ruta 29 Ida', polylineIDA29),
  Combi('Ruta 29 Regreso', polylineREGRESO29),
  Combi('Ruta 30 Ida', polylineIDA30),
  Combi('Ruta 30 Regreso', polylineREGRESO30),
  // Agrega más combis según sea necesario
];
