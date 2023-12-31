import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.876678878740666, -92.2997825582719),
  const LatLng(14.876659279841256, -92.29951169377193),
  const LatLng(14.880455052759151, -92.29893522325413),
  const LatLng(14.880553486356467, -92.30005907725237),
  const LatLng(14.88271311975794, -92.30051279587751),
  const LatLng(14.883073273433702, -92.29870548561797),
  const LatLng(14.883016006186962, -92.2985822674369),
  const LatLng(14.883059819871491, -92.29848864170805),
  const LatLng(14.883108395902626, -92.29845907568843),
  const LatLng(14.883301249369483, -92.29739398315112),
  const LatLng(14.883395543902553, -92.29722644237319),
  const LatLng(14.884408969891185, -92.29199109063363),
  const LatLng(14.884458287499406, -92.29147892107802),
  const LatLng(14.884570477124532, -92.2911933156343),
  const LatLng(14.884812664052665, -92.29092613634825),
  const LatLng(14.884975448101702, -92.2908724216259),
  const LatLng(14.886841343649984, -92.29122172183229),
  const LatLng(14.888028676159568, -92.2832665794325),
  const LatLng(14.888857774562924, -92.27825705664742),
  const LatLng(14.888469736981216, -92.27763594564081),
  const LatLng(14.888508596380408, -92.27737235121118),
  const LatLng(14.888684128896918, -92.27730050657426),
  const LatLng(14.892450307986298, -92.2747593880774),
  const LatLng(14.892268298424767, -92.27434457382626),
  const LatLng(14.891392912767005, -92.27315560129428),
  const LatLng(14.893556172868852, -92.27146337548858),
  const LatLng(14.893709753872015, -92.27162580751357),
  const LatLng(14.893851455580567, -92.27161702740423),
  const LatLng(14.89537369706796, -92.27062971711064),
  const LatLng(14.896334004026503, -92.27235032092246),
  const LatLng(14.899005341998707, -92.27070393042298),
  const LatLng(14.899348276101694, -92.27130457118018),
  const LatLng(14.903224393212971, -92.26893784439127),
  const LatLng(14.906745439356412, -92.26668214837463),
  const LatLng(14.907272379957805, -92.2678473893545),
  const LatLng(14.907790528691573, -92.2674703908331),
  const LatLng(14.910656171839518, -92.26571517353892),
  const LatLng(14.91120199625156, -92.2666396481498),
  const LatLng(14.91144148318147, -92.26709434041004),
  const LatLng(14.911758217602806, -92.26785312085158),
  const LatLng(14.912704080556866, -92.2677333594763), // BASE DE REGRESO
];

const PolylineId polylineRuta23IDA = PolylineId("Ruta 23");
final Polyline polylineRuta23 = Polyline(
  polylineId: polylineRuta23IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
const PolylineId polylineRuta23REGRESO = PolylineId("Ruta 23");
final Polyline polylineRuta23RE = Polyline(
  polylineId: polylineRuta23REGRESO,
  color: Colors.indigo.shade400, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
// Marker markerIR = const Marker(
//     markerId: MarkerId('markerIdaRUTA23'),
//     position: LatLng(14.876678878740666, -92.2997825582719),
//     infoWindow:
//         InfoWindow(title: "Base de Ida", snippet: "Ruta Estacion galaxias"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA23'),
//     position: const LatLng(14.912704080556866, -92.2677333594763),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//     infoWindow: const InfoWindow(
//         title: "Base de Regreso", snippet: "Ruta Estacion galaxias"));

Set<Polyline> polylineIDA23 = {polylineRuta23};
Set<Polyline> polylineREGRESO23 = {polylineRuta23RE};

// Set<Marker> markerRuta23 = {markerIR, markerRR};

// Marker markerIRE = const Marker(
//     markerId: MarkerId('markerIdaRUTA23'),
//     position: LatLng(14.931055420435397, -92.24637416953333),
//     infoWindow: InfoWindow(
//         title: "Base de Ida", snippet: "Ruta Estacion galaxias Extension"));
// Marker markerRRE = Marker(
//     markerId: const MarkerId('markerRegresoRUTA23'),
//     position: const LatLng(14.898859923200277, -92.26812431851937),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//     infoWindow: const InfoWindow(
//         title: "Base de Regreso", snippet: "Ruta Estacion galaxias Extension"));

// Set<Marker> markerRuta23Extension = {markerIRE, markerRRE};

List<LatLng> ruta2 = [
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
