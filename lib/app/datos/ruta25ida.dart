import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.891880566896983, -92.29768345676086),
  const LatLng(14.889482872663319, -92.2966825798007),
  const LatLng(14.891358647277917, -92.29451566424862),
  const LatLng(14.891772995289347, -92.29351332095848),
  const LatLng(14.888698962004531, -92.29145069552304),
  const LatLng(14.887007945020438, -92.29438240480602),
  const LatLng(14.886724545459263, -92.29416950682872),
  const LatLng(14.886447999108608, -92.29404919348588),
  const LatLng(14.88752646179325, -92.28760689252475),
  const LatLng(14.888841556970975, -92.2781579777487),
  const LatLng(14.88896752339895, -92.27777276783372),
  const LatLng(14.888839378138554, -92.27766171776211),
  const LatLng(14.888623132838871, -92.2777545357324),
  const LatLng(14.888448534623759, -92.27759044682065),
  const LatLng(14.888528625565689, -92.2773368548661),
  const LatLng(14.888685603725504, -92.27730039066348),
  const LatLng(14.892786654070168, -92.27460426928806),
  const LatLng(14.899003207787256, -92.27073745821208),
  const LatLng(14.899349788692524, -92.27130156118143),
  const LatLng(14.90322997562424, -92.26893555263135),
  const LatLng(14.906750987288268, -92.26667345542295),
  const LatLng(14.90726943713114, -92.26785095590729),
  const LatLng(14.911202777867594, -92.26538078797611),
  const LatLng(14.911497383602342, -92.26578511608048), // BASE DE REGRESO
];

const PolylineId polylineRuta25IDA = PolylineId("Ruta 25");
final Polyline polylineRuta25 = Polyline(
  polylineId: polylineRuta25IDA,
  color: Colors.purpleAccent.shade700, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA25'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 25"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA3'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 25"));

Set<Polyline> polylineIDA25 = {polylineRuta25};

Set<Marker> markerRuta25ida = {markerIR, markerRR};
