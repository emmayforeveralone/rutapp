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
const PolylineId polylineRuta21REGRESO = PolylineId("Ruta 21");
final Polyline polylineRuta21RE = Polyline(
  polylineId: polylineRuta21REGRESO,
  color: Colors.grey.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
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
Set<Polyline> polylineREGRESO21 = {polylineRuta21RE};

Set<Marker> markerRuta21 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.911293236309309, -92.26420293799492),
  const LatLng(14.911166683671901, -92.26390989647437),
  const LatLng(14.910219984908554, -92.26219477901532),
  const LatLng(14.911578545460136, -92.26126155335935),
  const LatLng(14.910131977198008, -92.2577818146785),
  const LatLng(14.913799020228273, -92.25600811763363),
  const LatLng(14.914647808167295, -92.25526576368895),
  const LatLng(14.915155468857591, -92.2550135147759),
  const LatLng(14.915575158550801, -92.25490540809494),
  const LatLng(14.916491111108536, -92.25439924971563),
  const LatLng(14.916151075258982, -92.25331140642318),
  const LatLng(14.913520613189036, -92.24791330813419),
  const LatLng(14.91279238048436, -92.24830300162414),
  const LatLng(14.91233419799549, -92.24728262628462),
  const LatLng(14.912979661933084, -92.24645886245447),
  const LatLng(14.91320291116643, -92.24630587298283),
  const LatLng(14.913470832059993, -92.24540814139112),
  const LatLng(14.913637609720048, -92.24562435474212),
  const LatLng(14.914352369651414, -92.24733888876098),
  const LatLng(14.915483151679345, -92.24674714693148),
  const LatLng(14.915736064831687, -92.24664852329272),
  const LatLng(14.91617591309644, -92.24596005444396),
  const LatLng(14.915957821783785, -92.24580453255207),
  const LatLng(14.917593191612925, -92.24291206866782),
  const LatLng(14.916433944124712, -92.24222267684642),
  const LatLng(14.915788352457797, -92.24206039619855),
  const LatLng(14.915810366466282, -92.24128291241824),
  const LatLng(14.915760128335334, -92.23903891048877), // BASE DE REGRESO
];
