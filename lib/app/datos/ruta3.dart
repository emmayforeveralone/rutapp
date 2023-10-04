import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.950402428008362, -92.25401951577824), //BASE DE IDA
  const LatLng(14.945879961312185, -92.25331556411167),
  const LatLng(14.944427741583572, -92.2531341102768),
  const LatLng(14.938761526476158, -92.25403940482467),
  const LatLng(14.938699329131593, -92.25404745145231),
  const LatLng(14.938626765546942, -92.2541413287637),
  const LatLng(14.938561976611373, -92.25412791771922),
  const LatLng(14.93664129527528, -92.25450060810334),
  const LatLng(14.92562431082926, -92.258286704012),
  const LatLng(14.9196672427712, -92.26035301643651),
  const LatLng(14.917722098786514, -92.26101572593342),
  const LatLng(14.915856590853807, -92.26199754548063),
  const LatLng(14.915692522440713, -92.26204309874),
  const LatLng(14.9147329299112, -92.26265832725824),
  const LatLng(14.914688778510707, -92.26271053899927),
  const LatLng(14.9141203630332, -92.26295492532076),
  const LatLng(14.913386564314221, -92.26339775340792),
  const LatLng(14.912761779162569, -92.26373641851255),
  const LatLng(14.912020360736017, -92.26416267371827),
  const LatLng(14.911487636284026, -92.26444684386084), // BASE DE REGRESO
];

const PolylineId polylineRuta3IDA = PolylineId("Ruta 5 Febrero");
final Polyline polylineRuta3 = Polyline(
  polylineId: polylineRuta3IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA3'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 5 Febrero"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA3'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "RUTA REGRESO 5 Febrero"));

Set<Polyline> polylineIDA3 = {polylineRuta3};

Set<Marker> markerRuta3 = {markerIR, markerRR};
