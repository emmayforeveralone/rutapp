import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.926859866457542, -92.26991807774965),
  const LatLng(14.926637680580317, -92.26973375661781),
  const LatLng(14.926637680580317, -92.26973375661781),
  const LatLng(14.925872371898011, -92.26885230012861),
  const LatLng(14.924834603437867, -92.26959969440502),
  const LatLng(14.924524245573846, -92.26905038093288),
  const LatLng(14.924134534208406, -92.26940624846306),
  const LatLng(14.923405022652142, -92.26971920998702),
  const LatLng(14.923032943356136, -92.26978673356972),
  const LatLng(14.921983711556381, -92.26991083096571),
  const LatLng(14.921140959863125, -92.27017392739835),
  const LatLng(14.920952273200625, -92.27012830335582),
  const LatLng(14.92091524121939, -92.26998413138139),
  const LatLng(14.920994595457074, -92.26964286354324),
  const LatLng(14.92090113379628, -92.26942569310074),
  const LatLng(14.920186944285922, -92.26900047704325),
  const LatLng(14.920245648861783, -92.26850346697155),
  const LatLng(14.920132789099611, -92.26804722654617),
  const LatLng(14.919499715262035, -92.26643396044902),
  const LatLng(14.919239689682998, -92.26602289982556),
  const LatLng(14.918945194739043, -92.26566338237036),
  const LatLng(14.917654896010763, -92.26472945315405),
  const LatLng(14.917286333676985, -92.26428233756144),
  const LatLng(14.917226376110627, -92.2643717606848),
  const LatLng(14.916780220738156, -92.2638060225819),
  const LatLng(14.916383441481155, -92.26311801202046),
  const LatLng(14.916249159381644, -92.26310801548257),
  const LatLng(14.915700536444534, -92.26279687108773),
  const LatLng(14.915054046520419, -92.2626848154411),
  const LatLng(14.91468179511806, -92.26271106290578),
  const LatLng(14.91200906119454, -92.26414832861786),
  const LatLng(14.912373948286445, -92.26480979520059),
  const LatLng(14.912884654928135, -92.26540660480046),
  const LatLng(14.914740109976627, -92.26416429576624),
  const LatLng(14.915418212013128, -92.26531364025915),
  const LatLng(14.91565480614814, -92.26524535356685), // BASE DE REGRESO
];

const PolylineId polylineRuta24IDA = PolylineId("Ruta 24");
final Polyline polylineRuta24 = Polyline(
  polylineId: polylineRuta24IDA,
  color: Colors.brown.shade700, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA24'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 24"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA24'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 24"));

Set<Polyline> polylineIDA24 = {polylineRuta24};

Set<Marker> markerRuta24ida = {markerIR, markerRR};
