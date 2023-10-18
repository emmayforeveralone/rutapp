import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.994448981984798, -92.16708021699603),
const LatLng(14.994675562870391, -92.16700578681916),
const LatLng(14.994422838018414, -92.16641034539862),
const LatLng(14.994309547471776, -92.16609909193174),
const LatLng(14.99419625686513, -92.16587805686103),
const LatLng(14.99338513693972, -92.16626128393958),
const LatLng(14.991567746085124, -92.1670123407665),
const LatLng(14.989823622572736, -92.1677558111656),
const LatLng(14.988423916512755, -92.16822616999441),
const LatLng(14.987844977839561, -92.16844617653967),
const LatLng(14.987625127300207, -92.1685599730286)

  
];

const PolylineId polylineRuta5IDA = PolylineId("Ruta 44");
final Polyline polylineRuta4 = Polyline(
  polylineId: polylineRuta5IDA,
  color: Color.fromARGB(255, 225, 16, 207), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA44'),
    position: LatLng(14.994448981984798, -92.16708021699603),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 44"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA44'),
    position: const LatLng(14.987625127300207, -92.1685599730286),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Ruta 44", snippet: "RUTA REGRESO 44"));

Set<Polyline> polylineIDA5 = {polylineRuta4};

Set<Marker> markerRuta44 = {markerIR, markerRR};