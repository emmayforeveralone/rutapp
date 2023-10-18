import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.931055420435397, -92.24637416953333),
  const LatLng(14.931145649139046, -92.24673515217873),
  const LatLng(14.929336213378143, -92.24714737689276),
  const LatLng(14.92911065451485, -92.24613663729842),
  const LatLng(14.928642739118212, -92.24626577356236),
  const LatLng(14.929012272383885, -92.24789487715915),
  const LatLng(14.929077060618932, -92.24824751849529),
  const LatLng(14.928616343845134, -92.24834685406948),
  const LatLng(14.927702106071674, -92.24857035913912),
  const LatLng(14.927229388439192, -92.24862996049173),
  const LatLng(14.927478945085733, -92.24963076651214),
  const LatLng(14.928371587640463, -92.24940974482963),
  const LatLng(14.928676333051026, -92.25070359080888),
  const LatLng(14.928210816282295, -92.25090474537386),
  const LatLng(14.927990055391259, -92.2514784083471),
  const LatLng(14.92780048880075, -92.25213899000494),
  const LatLng(14.928030848180015, -92.25241216287094),
  const LatLng(14.92764211658429, -92.25280702183181),
  const LatLng(14.927392560127554, -92.25298085911018),
  const LatLng(14.92613811018366, -92.25332379989983),
  const LatLng(14.92224200133755, -92.25472203600279),
  const LatLng(14.921299383711705, -92.25517077220927),
  const LatLng(14.918446369342892, -92.25671208368257),
  const LatLng(14.915090572636645, -92.25862409025022),
  const LatLng(14.91412907069726, -92.259066323078),
  const LatLng(14.911349107023698, -92.26071724939378),
  const LatLng(14.906464611369048, -92.2634457206763),
  const LatLng(14.901687519676154, -92.2664287854617),
  const LatLng(14.898859923200277, -92.26812431851937), // BASE DE REGRESO
];

const PolylineId polylineRuta23REGRESO = PolylineId("Ruta 23");
final Polyline polylineRuta23 = Polyline(
  polylineId: polylineRuta23REGRESO,
  color: Colors.indigo, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA23'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA EXTENSION 23"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA23'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA 23"));

Set<Polyline> polylineREGRESO23 = {polylineRuta23};

Set<Marker> markerRuta23regreso = {markerIR, markerRR};
