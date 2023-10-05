import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [];

const PolylineId polylineRuta7IDA = PolylineId("Ruta 7");
final Polyline polylineRuta7 = Polyline(
  polylineId: polylineRuta7IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA7'),
    position: LatLng(),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 7"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA7'),
    position: const LatLng(),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO "));

Set<Polyline> polylineIDA7 = {polylineRuta7};

Set<Marker> markerRuta7 = {markerIR, markerRR};
