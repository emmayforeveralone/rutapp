import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//AQUI PONES TU RUTA DE IDA
List<LatLng> ruta = [];

const PolylineId polylineXUIXTLAReg = PolylineId("Ruta Huixtla");
final Polyline polylineIdaXUIXTLA = Polyline(
  polylineId: polylineXUIXTLAReg,
  color: Colors.redAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);

// AQUI PONES TU RUTA DE REGRESO
List<LatLng> rutaReg = [];

const PolylineId polylineHUIXTLAREG = PolylineId("Ruta Huixtla Regreso");
final Polyline polylineHuixtlaReg = Polyline(
  polylineId: polylineHUIXTLAREG,
  color: Colors.redAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: rutaReg,
);

Set<Polyline> polylineIDAHuixtla = {polylineIdaXUIXTLA};
Set<Polyline> polylineREGHuixtla = {polylineHuixtlaReg};
