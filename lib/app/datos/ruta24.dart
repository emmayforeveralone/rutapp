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
  color: Colors.greenAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
const PolylineId polylineRuta24REGRESO = PolylineId("Ruta 24");
final Polyline polylineRuta24RE = Polyline(
  polylineId: polylineRuta24REGRESO,
  color: Colors.greenAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
// Marker markerIR = const Marker(
//     markerId: MarkerId('markerIdaRUTA24'),
//     position: LatLng(14.926859866457542, -92.26991807774965),
//     infoWindow: InfoWindow(title: "Base de Ida", snippet: "Ruta El vergel"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA24'),
//     position: const LatLng(14.91565480614814, -92.26524535356685),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//     infoWindow:
//         const InfoWindow(title: "Base de Regreso", snippet: "Ruta El vergel'"));

Set<Polyline> polylineIDA24 = {polylineRuta24};
Set<Polyline> polylineREGRESO24 = {polylineRuta24RE};

// Set<Marker> markerRuta24 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.91565480614814, -92.26524535356685),
  const LatLng(14.91621432168072, -92.26509959108051),
  const LatLng(14.916720526736517, -92.26482561938052),
  const LatLng(14.917215093754425, -92.26438606038987),
  const LatLng(14.916602334448529, -92.2635360180104),
  const LatLng(14.916407947663739, -92.26312295780927),
  const LatLng(14.916690456399767, -92.2632490216369),
  const LatLng(14.917278771578827, -92.26353865517562),
  const LatLng(14.91719583349965, -92.26398390188591),
  const LatLng(14.917839268335834, -92.26473729070294),
  const LatLng(14.918590891261163, -92.26532469449543),
  const LatLng(14.919106658601976, -92.26565460619064),
  const LatLng(14.919635383610869, -92.26645926892007),
  const LatLng(14.920322205836047, -92.26842532813129),
  const LatLng(14.920298879841468, -92.26906101163237),
  const LatLng(14.920928680991572, -92.26949016508809),
  const LatLng(14.921011617631077, -92.26969669518864),
  const LatLng(14.920931272762045, -92.2700427001623),
  const LatLng(14.921024576478121, -92.27017412840812),
  const LatLng(14.921114429521726, -92.27018231016052),
  const LatLng(14.92221333647533, -92.26987385610587),
  const LatLng(14.923299279077316, -92.26975852111465),
  const LatLng(14.9239952396732, -92.26947975710098),
  const LatLng(14.924251821138284, -92.26933223560057),
  const LatLng(14.924518769206198, -92.26905865027256),
  const LatLng(14.924829776256136, -92.26960313871699),
  const LatLng(14.925871646579386, -92.26884407355254),
  const LatLng(14.926364071094277, -92.26960313872243),
  const LatLng(14.926633608248242, -92.26975602463779),
  const LatLng(14.926820210690051, -92.26989818172),
  const LatLng(14.926859866457542, -92.26991807774965), // BASE DE REGRESO
];
