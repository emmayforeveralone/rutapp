import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.915760128335334, -92.23903891048877),
  const LatLng(14.91582578111187, -92.24130766366027),
  const LatLng(14.915789887902937, -92.24206448895148),
  const LatLng(14.91645391130574, -92.24222931900255),
  const LatLng(14.917584193302028, -92.24291922045239),
  const LatLng(14.915962276191966, -92.24579794248979),
  const LatLng(14.916191095107582, -92.24595116475112),
  const LatLng(14.915740187000866, -92.24661744962143),
  const LatLng(14.915375557792979, -92.24683184079355),
  const LatLng(14.913841876893288, -92.24760215741395),
  const LatLng(14.913209252367517, -92.24629512473842),
  const LatLng(14.912897426106804, -92.24769269786806),
  const LatLng(14.91280993520848, -92.24783431242238),
  const LatLng(14.91263046658776, -92.2479434252757),
  const LatLng(14.912785855869767, -92.24830080691618),
  const LatLng(14.912978784499417, -92.24894155471114),
  const LatLng(14.914250763066553, -92.25185742155428),
  const LatLng(14.911553548468842, -92.2533059857911),
  const LatLng(14.912973595834568, -92.25638799784477),
  const LatLng(14.91378517043195, -92.25599469538334),
  const LatLng(14.914090004977545, -92.25689191662349),
  const LatLng(14.913250664225325, -92.2573616394163),
  const LatLng(14.909783022308304, -92.25922133710864),
  const LatLng(14.911298675693352, -92.26262401722482),
  const LatLng(14.911997637221889, -92.26413539057971),
  const LatLng(14.910839046081044, -92.26479679235365),
  const LatLng(14.91118716801845, -92.26534561510225),
  const LatLng(14.911780061896588, -92.26497128984295),
  const LatLng(14.911293236309309, -92.26420293799492), // BASE DE REGRESO
];

const PolylineId polylineRuta21IDA = PolylineId("Ruta 21");
final Polyline polylineRuta21 = Polyline(
  polylineId: polylineRuta21IDA,
  color: Colors.pinkAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA21'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 21"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA21'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 21"));

Set<Polyline> polylineIDA21 = {polylineRuta21};

Set<Marker> markerRuta21ida = {markerIR, markerRR};
