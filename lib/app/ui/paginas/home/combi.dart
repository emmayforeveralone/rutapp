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
import 'package:rutapp/app/datos/rutaCacahoatan.dart';
import 'package:rutapp/app/datos/rutaHuixtla.dart';
import 'package:rutapp/app/datos/rutaPuerto.dart';
import 'package:rutapp/app/datos/rutaTalisman.dart';
import 'package:rutapp/app/datos/rutaTuxChico.dart';
import 'package:rutapp/generated/l10n.dart';

class Combi {
  final String nombre;
  final Set<Polyline> ruta;

  Combi(this.nombre, this.ruta);
}

const String xochi = "Xochimilco";
const String dos = "Laureles 2";
const String tres = "5 de Febrero";
const String seis = "Bonanza Por Tercera";
const String ocho = "Bonanza Por la 17";
const String nueve = "Palmeras";
const String once = "Montenegro";
const String doce = "La Joya";
const String trece = "Framboyanes";
const String catorce = "Vida Mejor";
const String quince = "Periferico Izquierda";
const String dieciseis = "Periferico Derecha";
const String diecisiete = "Emiliano Zapata Par Vial";
const String dieciocho = "Los Palacios";
const String diecinueve = "Seminarista";
const String veinte = "6 de Enero";
const String veintiuno = "Lomas de Sayula (tecnica 3)";
const String veintidos = "Colinas del Rey";
const String veintitres = "Estacion Galaxias";
const String veintitresE = "Estacion Galaxias Extension";
const String veinticuatro = "El Vergel";
const String veinticinco = "Libertad del Carmen";
const String veintiseis = "Soliradidad 2000";
const String veintisiete = "Cafetales Vida Mejor";
const String veintiocho = "Las Vegas Izquierda";
const String veintinueve = "Las Vegas Derecha";
const String treinta = "El Porvenir";
const String treintauno = "Francisco Villa";
const String treintados = "18 de Octubre";
const String treintatres = "Teofilo Acebo 1";
const String treintacuatro = "Confeti";
const String treintacinco = "5 de Febrero San Juan";
const String treintasiete = "Las Americas";
const String treintaocho = "Bonanza por Central";
const String treintanueve = "Loma Linda";
const String cuarentaUno = "Nuevo Milenio";
const String cuarentDos = "Raymundo Enrique";
const String cuarentTres = "Tecnica 3";
const String cuarentCuatro = "Zocalo Estacion";
const String cuarentCinco = "Emiliano Zapata";
const String cuarentSeis = "Teofilio Acebo";
const String cuarentSiete = "Venustiano Carranza";
const String cuarentNueve = "Unidad Administrativa";
const String huixtla = "Huixtla";
const String puerto = "Puerto Madero";
const String cacahoatan = "Cacahoatan";
const String talisman = "Talisman";
const String tuxChico = "Tuxtla Chico";

// Lista de combis
final List<Combi> listaDeCombis = [
  Combi(S().BaseI(tres), polylineIDA3), //
  Combi(S().BaseR(tres), polylineREGRESO3), //
  Combi(S().BaseI(treintacinco), polylineIDA35),
  Combi(S().BaseR(treintacinco), polylineREGRESO35),
  Combi(S().BaseI(veinte), polylineIDA20), //
  Combi(S().BaseR(veinte), polylineI20REGRESO), //
  Combi(S().BaseI(treintados), polylineIDA32),
  Combi(S().BaseR(treintados), polylineREGRESO32),
  Combi(S().BaseI(treintaocho), polylineIDA38),
  Combi(S().BaseR(treintaocho), polylineREGRESO38),
  Combi(S().BaseI(seis), polylineIDA6), //
  Combi(S().BaseR(seis), polylineIDA6REGRE), //
  Combi(S().BaseI(ocho), polylineIDA8), //
  Combi(S().BaseR(ocho), polylineREGRESO8), //
  Combi(S().BaseI(veintisiete), polylineIDA27),
  Combi(S().BaseR(veintisiete), polylineREGRESO27),
  Combi(S().BaseI(veintidos), polylineIDA22),
  Combi(S().BaseR(veintidos), polylineREGRESO22),
  Combi(S().BaseI(treintacuatro), polylineIDA34),
  Combi(S().BaseR(treintacuatro), polylineREGRESO34),
  Combi(S().BaseI(treinta), polylineIDA30),
  Combi(S().BaseR(treinta), polylineREGRESO30),
  Combi(S().BaseI(veinticuatro), polylineIDA24),
  Combi(S().BaseR(veinticuatro), polylineREGRESO24),
  Combi(S().BaseI(diecisiete), polylineIDA17), //
  Combi(S().BaseR(diecisiete), polyline17REGRESO), //
  Combi(S().Ruta(cuarentCinco), polylineIDA45), //
  Combi(S().Ruta(veintitresE), polylineREGRESO23),
  Combi(S().Ruta(veintitres), polylineIDA23),
  Combi(S().BaseI(trece), polylineIDA13), //
  Combi(S().BaseR(trece), polyline13REGRESO), //
  Combi(S().Ruta(treintauno), polylineIDA31),
  Combi(S().BaseI(doce), polylineIDA12), //
  Combi(S().BaseR(doce), polyline12REGRESO), //
  Combi(S().BaseI(treintasiete), polylineIDA37),
  Combi(S().BaseR(treintasiete), polylineREGRESO37),
  Combi(S().BaseI(veintinueve), polylineIDA29),
  Combi(S().BaseR(veintinueve), polylineREGRESO29),
  Combi(S().BaseI(veintiocho), polylineIDA28),
  Combi(S().BaseR(veintiocho), polylineREGRESO28),
  Combi(S().BaseI(dos), polylineIDA2), // Ruta 2
  Combi(S().BaseR(dos), polylineREGRESO2), //
  Combi(S().BaseI(veinticinco), polylineIDA25),
  Combi(S().BaseR(veinticinco), polylineREGRESO25),
  Combi(S().BaseI(treintanueve), polylineIDA39),
  Combi(S().BaseR(treintanueve), polylineREGRESO39),
  Combi(S().BaseI(veintiuno), polylineIDA21),
  Combi(S().BaseR(veintiuno), polylineREGRESO21),
  Combi(S().BaseI(dieciocho), polylineIDA18), //
  Combi(S().BaseR(dieciocho), polyline18REGRESO), //
  Combi(S().BaseI(once), polylineIDA11), //
  Combi(S().BaseR(once), polyline11REGRESO), //
  Combi(S().BaseI(cuarentaUno), polylineIDA41), //
  Combi(S().BaseR(cuarentaUno), polylineIDA41Regreso), //
  Combi(S().BaseDer(nueve), polylineIDA9), //
  Combi(S().BaseIzq(nueve), polylineREGRESO9), //
  Combi(S().Ruta(dieciseis), polylineIDA16), //
  Combi(S().Ruta(quince), polylineIDA15), //
  Combi(S().BaseI(cuarentDos), polylineIDA42), //
  Combi(S().BaseR(cuarentDos), polylineIDA42Regreso), //
  Combi(S().BaseI(diecinueve), polylineIDA19), //
  Combi(S().BaseR(diecinueve), polyline19REGRESO), //
  Combi(S().Ruta(veintiseis), polyline26),
  Combi(S().BaseI(cuarentTres), polylineIDA43), //
  Combi(S().BaseR(cuarentTres), polylineIDA43Regreso), //
  Combi(S().Ruta(cuarentSeis), polylineIDA46), //
  Combi(S().BaseI(treintatres), polylineIDA33),
  Combi(S().BaseR(treintatres), polylineREGRESO33),
  Combi(S().BaseI(cuarentNueve), polylineIDA49), //
  Combi(S().BaseR(cuarentNueve), polylineIDA49Regreso), //
  Combi(S().BaseI(cuarentSiete), polylineIDA47), //
  Combi(S().BaseR(cuarentSiete), polylineIDA47Regreso), //
  Combi(S().BaseI(catorce), polylineIDA14), //
  Combi(S().BaseR(catorce), polyline14REGRESO), //
  Combi(S().BaseI(xochi), polylineRegreXochi),
  Combi(S().BaseR(xochi), polylineIdaXochi), // Ruta 1
  Combi(S().Ruta(cuarentCuatro), polylineIDA44), //
  Combi(S().ForaneaI(huixtla), polylineIDAHuixtla),
  Combi(S().ForaneaR(huixtla), polylineREGHuixtla),
  Combi(S().ForaneaI(puerto), polylineIDAPUERTO),
  Combi(S().ForaneaR(puerto), polylineREGPUERTO),
  Combi(S().Foranea(cacahoatan), polylineIdaCacahoatan),
  Combi(S().Foranea(talisman), polylineIdaTalisman),
  Combi(S().Foranea(tuxChico), polylineIdaTuxtlaChico)
];
