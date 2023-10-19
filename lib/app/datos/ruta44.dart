import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.898808585226764, -92.26816802083115),
  const LatLng(14.899188860826065, -92.26795073626985),
  const LatLng(14.899971653171459, -92.26741429447655),
  const LatLng(14.900884043322373, -92.2668885815133),
  const LatLng(14.901729037585563, -92.26640578388508),
  const LatLng(14.903030218556813, -92.26556893468104),
  const LatLng(14.90384410067477, -92.26500567078877),
  const LatLng(14.90496901547151, -92.26437266945851),
  const LatLng(14.906109476095597, -92.26365920185981),
  const LatLng(14.906477532554533, -92.26344998955548),
  const LatLng(14.907555778804387, -92.26281162382143),
  const LatLng(14.908623652010823, -92.26225372434162),
  const LatLng(14.909230160161115, -92.26192113041984),
  const LatLng(14.909935158929569, -92.26152952790736),
  const LatLng(14.910650522954754, -92.26109501005479),
  const LatLng(14.910660890531842, -92.26111646772652),
  const LatLng(14.91089416088416, -92.26171191811709),
  const LatLng(14.9107645662752, -92.26182457089368),
];
const PolylineId polylineRuta44IDA = PolylineId("Ruta 44");
final Polyline polylineRuta44 = Polyline(
  polylineId: polylineRuta44IDA,
  color: Color.fromARGB(255, 225, 16, 207), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA44'),
    position: LatLng(14.898808585226764, -92.26816802083115),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 44"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA44'),
    position: const LatLng(14.9107645662752, -92.26182457089368),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow: const InfoWindow(title: "Ruta 44", snippet: "RUTA REGRESO 44"));

Set<Polyline> polylineIDA44 = {polylineRuta44};

Set<Marker> markerRuta44 = {markerIR, markerRR};
