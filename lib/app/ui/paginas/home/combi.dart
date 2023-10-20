import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta31.dart';
import 'package:rutapp/app/datos/ruta32.dart';
import 'package:rutapp/app/datos/ruta33.dart';
import 'package:rutapp/app/datos/ruta34.dart';
import 'package:rutapp/app/datos/ruta35.dart';
import 'package:rutapp/app/datos/ruta37.dart';
import 'package:rutapp/app/datos/ruta38.dart';
import 'package:rutapp/app/datos/ruta39.dart';

import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta6.dart';
// import 'package:rutapp/app/datos/ruta7.dart';
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
import 'package:rutapp/app/datos/ruta21.dart';
import 'package:rutapp/app/datos/ruta22.dart';
import 'package:rutapp/app/datos/ruta23.dart';
import 'package:rutapp/app/datos/ruta24.dart';
import 'package:rutapp/app/datos/ruta25.dart';
import 'package:rutapp/app/datos/ruta26.dart';
import 'package:rutapp/app/datos/ruta27.dart';
import 'package:rutapp/app/datos/ruta28.dart';
import 'package:rutapp/app/datos/ruta29.dart';
import 'package:rutapp/app/datos/ruta30.dart';
// import 'package:rutapp/app/datos/ruta40.dart';
// import 'package:rutapp/app/datos/ruta40regreso.dart';
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

class Combi {
  final String nombre;
  final Set<Polyline> ruta;

  Combi(this.nombre, this.ruta);
}

// Lista de combis
final List<Combi> listaDeCombis = [
  Combi('Ruta Francisco Villa ida', polylineIDA31),
  Combi('Ruta 18 de Octubre ida ', polylineIDA32),
  Combi('Ruta 18 de Octubre regreso', polylineREGRESO32),
  Combi('Ruta Teofilo Acebo 1 ida', polylineIDA33),
  Combi('Ruta Teofilo Acebo 1 regreso', polylineREGRESO33),

  Combi('Ruta Confeti ida', polylineIDA34),
  Combi('Ruta Confeti regreso', polylineREGRESO34),

  Combi('Ruta 5 de Febrero San Juan ida', polylineIDA35),
  Combi('Ruta 5 de Febrero San Juan regreso', polylineREGRESO35),

  Combi('Ruta Las Americas ida', polylineIDA37),
  Combi('Ruta Las Americas regreso', polylineREGRESO37),

  Combi('Ruta Bonanza por Central ida', polylineIDA38),
  Combi('Ruta Bonanza por Central regreso', polylineREGRESO38),

  Combi('Ruta Loma Linda ida', polylineIDA39),
  Combi('Ruta Loma Linda regreso', polylineREGRESO39),

  // Agrega más combis según sea necesario
  Combi('RUTA Xochimilco Regreso', polylineIdaXochi), // Ruta 1
  Combi('RUTA Xochimilco Ida', polylineRegreXochi),
  Combi('RUTA Xochimilco Regreso', polylineIdaXochi), // Ruta 1
  Combi('RUTA Laureles 2 Ida', polylineIDA2), // Ruta 2
  Combi('Ruta Laureles 2 Regreso', polylineREGRESO2), //
  Combi('Ruta 5 de Febrero Ida', polylineIDA3), //
  Combi('Ruta 5 de Febrero Regreso', polylineREGRESO3), //
  Combi('Ruta Bonanza Por Tercera Ida', polylineIDA6), //
  Combi('Ruta Bonanza Por Tercera Regreso', polylineIDA6REGRE), //
  // Combi('Ruta 7 IDA', polylineIDA7), //
  // Combi('Ruta 7 Regreso', polylineREGRESO7), //
  Combi('Ruta Bonanza Regreso Por 17 Ida', polylineIDA8), //
  Combi('Ruta Bonanza Regreso por 17 Regreso', polylineREGRESO8), //
  Combi('Ruta Palmeras Derecha', polylineIDA9), //
  Combi('Ruta Palmeras Izquierda', polylineREGRESO9), //
  Combi('Ruta Montenegro Ida', polylineIDA11), //
  Combi('Ruta Montenegro Regreso', polyline11REGRESO), //
  Combi('Ruta La Joya Ida', polylineIDA12), //
  Combi('Ruta La Joya Regreso', polyline12REGRESO), //
  Combi('Ruta Framboyanes Ida', polylineIDA13), //
  Combi('Ruta Framboyanes Regreso', polyline13REGRESO), //
  Combi('Ruta Vida Mejor Ida', polylineIDA14), //
  Combi('Ruta Vida Mejor Regreso', polyline14REGRESO), //
  Combi('Ruta Periferico Izquierda', polylineIDA15), //
  Combi('Ruta Periferico Derecha', polylineIDA16), //
  Combi('Ruta Emiliano Zapata Par Vial Ida', polylineIDA17), //
  Combi('Ruta Emiliano Zapata Par Vial Regreso', polyline17REGRESO), //
  Combi('Ruta Los Palacios Ida', polylineIDA18), //
  Combi('Ruta LOs Palacios Regreso', polyline18REGRESO), //
  Combi('Ruta Seminarista Ida', polylineIDA19), //
  Combi('Ruta Seminarista Regreso', polyline19REGRESO), //
  Combi('Ruta 6 De Enero Ida', polylineIDA20), //
  Combi('Ruta 6 de Enero Regreso', polylineI20REGRESO), //
  Combi('Ruta Lomas de sayula (tecnica 3) Ida', polylineIDA21),
  Combi('Ruta Lomas de sayula (tecnica 3) Regreso', polylineREGRESO21),
  Combi('Ruta Colinas del rey Ida', polylineIDA22),
  Combi('Ruta Colinas del rey Regreso', polylineREGRESO22),
  Combi('Ruta Estacion galaxias', polylineIDA23),
  Combi('Ruta Estacion galaxias Extension', polylineREGRESO23),
  Combi('Ruta El vergel Ida', polylineIDA24),
  Combi('Ruta El vergel Regreso', polylineREGRESO24),
  Combi('Ruta Libertad el carmen Ida', polylineIDA25),
  Combi('Ruta Libertad el carmen Regreso', polylineREGRESO25),
  Combi('Ruta Solidaridad 2000', polyline26),
  Combi('Ruta Cafetales Vida mejor Ida', polylineIDA27),
  Combi('Ruta Cafetales Vida mejor Regreso', polylineREGRESO27),
  Combi('Ruta Las vegas izquierda Ida', polylineIDA28),
  Combi('Ruta Las vegas izquierda Regreso', polylineREGRESO28),
  Combi('Ruta Las vegas derecha Ida', polylineIDA29),
  Combi('Ruta Las vegas derecha Regreso', polylineREGRESO29),
  Combi('Ruta El Porvenir Ida', polylineIDA30),
  Combi('Ruta El Porvenir Regreso', polylineREGRESO30),
  // Combi('Ruta 40 Ida', polylineIDA40), //
  // Combi('Ruta 40 Regreso', polylineregreso40), //
  Combi('Ruta Nuevo Milenio Ida', polylineIDA41), //
  Combi('Ruta Nuevo Milenio Regreso', polylineIDA41Regreso), //
  Combi('Ruta Ray Mundo Enrique Ida', polylineIDA42), //
  Combi('Ruta Ray Mundo Enrique Regreso', polylineIDA42Regreso), //
  Combi('Ruta Tecnica 3 Ida', polylineIDA43), //
  Combi('Ruta Tecnica 3 Regreso', polylineIDA43Regreso), //
  Combi('Ruta Zocalo Estacion', polylineIDA44), //
  Combi('Ruta Emiliano Zapata', polylineIDA45), //
  Combi('Ruta Teofilio Acebo', polylineIDA46), //
  Combi('Ruta Venustiano Carranza Ida', polylineIDA47), //
  Combi('Ruta Venustiano Carranza Regreso', polylineIDA47Regreso), //
  Combi('Ruta Unidad Administrativa Ida', polylineIDA49), //
  Combi('Ruta Unidad Administrativa Regreso', polylineIDA49Regreso), //
];
