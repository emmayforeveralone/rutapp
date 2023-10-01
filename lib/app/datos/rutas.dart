import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// EMMA
final List<LatLng> routeCoordinatesXochimilco = [
  const LatLng(14.944155, -92.256285), //BASE DE IDA
  const LatLng(14.944114, -92.255507),
  const LatLng(14.941294, -92.256028),
  const LatLng(14.941322, -92.256638),
  const LatLng(14.939444, -92.256647),
  const LatLng(14.939555, -92.257193),
  const LatLng(14.937561, -92.257329),
  const LatLng(14.936803, -92.257424),
  const LatLng(14.935443, -92.257528),
  const LatLng(14.934772, -92.257647),
  const LatLng(14.934829, -92.258060),
  const LatLng(14.934988, -92.258554),
  const LatLng(14.934776, -92.259404),
  const LatLng(14.931353, -92.260494),
  const LatLng(14.928302, -92.261417),
  const LatLng(14.925771, -92.262211),
  const LatLng(14.923465, -92.263020),
  const LatLng(14.921635, -92.262937),
  const LatLng(14.917659, -92.263583),
  const LatLng(14.917302, -92.263547),
  const LatLng(14.916755, -92.263278),
  const LatLng(
      14.916259643111685, -92.26310259671287), // Interseccion en el centro
  const LatLng(14.914825, -92.264069),
  const LatLng(14.913462, -92.265027),
  const LatLng(14.91289719816397, -92.26544257614327),
  const LatLng(14.912426466069604, -92.26576856711745), // Cam
  const LatLng(14.911804, -92.264966),
  const LatLng(14.911874, -92.264891), // BASE DE REGRESO
];

const PolylineId polylineRutaXochimilcoIda = PolylineId("Ruta Xochimilco");
final Polyline polylineRX = Polyline(
  polylineId: polylineRutaXochimilcoIda,
  color: Colors.green, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: routeCoordinatesXochimilco,
);
Marker markerIX = const Marker(
    markerId: MarkerId('marker'),
    position: LatLng(14.944155, -92.256285),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA XOCHIMILCO"));
Marker markerRX = const Marker(
    markerId: MarkerId('marker'),
    position: LatLng(14.911874, -92.264891),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA XOCHIMILCO"));

final List<LatLng> regreso = [
  const LatLng(14.911874, -92.264891),
  const LatLng(14.912299298147405, -92.26463670968532),
  const LatLng(14.912867, -92.265454),
];
const PolylineId polylineRutaXochimilcoRegreso =
    PolylineId("Ruta Xochimilco Regreso");
final Polyline polylineR = Polyline(
  polylineId: polylineRutaXochimilcoRegreso,
  color: Colors.blue, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: regreso,
);

Set<Polyline> polylineIdaXochi = {polylineRX};
Set<Polyline> polylineRegreXochi = {polylineR};

Set<Marker> markerXochi = {markerIX, markerRX};
