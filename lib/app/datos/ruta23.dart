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
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA23'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA 23"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA23'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "RUTA EXTENSION 23"));

Set<Polyline> polylineIDA23 = {polylineRuta23};

Set<Marker> markerRuta23 = {markerIR, markerRR};
