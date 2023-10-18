import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
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

const PolylineId polylineRuta25REGRESO = PolylineId("Ruta 25");
final Polyline polylineRuta25 = Polyline(
  polylineId: polylineRuta25REGRESO,
  color: Colors.pinkAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA25'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 25"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA25'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 25"));

Set<Polyline> polylineREGRESO25 = {polylineRuta25};

Set<Marker> markerRuta25regreso = {markerIR, markerRR};
