import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
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

const PolylineId polylineRuta24REGRESO = PolylineId("Ruta 24");
final Polyline polylineRuta24 = Polyline(
  polylineId: polylineRuta24REGRESO,
  color: Colors.indigoAccent.shade700, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA24'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 24"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA24'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 24"));

Set<Polyline> polylineREGRESO24 = {polylineRuta24};

Set<Marker> markerRuta24regreso = {markerIR, markerRR};
