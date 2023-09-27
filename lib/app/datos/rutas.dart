import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final List<LatLng> routeCoordinates = [
  LatLng(14.944240, -92.256287),
  LatLng(14.911874, -92.264891),
];

final PolylineId polylineXochimilco = PolylineId("route");
final Polyline polyline = Polyline(
  polylineId: polylineXochimilco,
  color: Colors.green, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: routeCoordinates,
);
