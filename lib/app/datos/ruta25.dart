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
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
const PolylineId polylineRuta25REGRESO = PolylineId("Ruta 25");
final Polyline polylineRuta25RE = Polyline(
  polylineId: polylineRuta25REGRESO,
  color: Colors.pinkAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
// Marker markerIR = const Marker(
//     markerId: MarkerId('markerIdaRUTA25'),
//     position: LatLng(14.911497383602342, -92.26578511608048),
//     infoWindow:
//         InfoWindow(title: "Base de Ida", snippet: "Ruta Libertad el carmen"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA3'),
//     position: const LatLng(14.891930739344135, -92.29756901704991),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//     infoWindow: const InfoWindow(
//         title: "Base de Regreso", snippet: "Ruta Libertad el carmen"));

Set<Polyline> polylineIDA25 = {polylineRuta25};
Set<Polyline> polylineREGRESO25 = {polylineRuta25RE};

// Set<Marker> markerRuta25 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.911497383602342, -92.26578511608048),
  const LatLng(14.911773340891344, -92.26622357897791),
  const LatLng(14.911773340891344, -92.26622357897791),
  const LatLng(14.90971853760579, -92.26735766980957),
  const LatLng(14.90661241232851, -92.26912969129704),
  const LatLng(14.906187728042045, -92.26866525798924),
  const LatLng(14.905829397037696, -92.26805979629087),
  const LatLng(14.90182370981245, -92.27081031206681),
  const LatLng(14.896985662066504, -92.27357552216782),
  const LatLng(14.896388707229216, -92.27250108971351),
  const LatLng(14.889683655245188, -92.27675809420289),
  const LatLng(14.889062536633194, -92.27759588008091),
  const LatLng(14.888830162964123, -92.27819554788745),
  const LatLng(14.887480137361617, -92.28763614660242),
  const LatLng(14.886312997534208, -92.29475337008023),
  const LatLng(14.88584825809112, -92.29557366334032),
  const LatLng(14.885996058437767, -92.29585085422188),
  const LatLng(14.887083773506365, -92.29582217930368),
  const LatLng(14.88766037549341, -92.29616704444149),
  const LatLng(14.888185603533266, -92.29622720071332),
  const LatLng(14.889843926443945, -92.29680508969834),
  const LatLng(14.890541112237962, -92.29703176246336),
  const LatLng(14.891930739344135, -92.29756901704991), // BASE DE REGRESO
];
