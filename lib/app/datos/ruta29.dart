import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.89365134714328, -92.28222951490548),
  const LatLng(14.894128651956438, -92.28129281163679),
  const LatLng(14.893601970722939, -92.28101605839834),
  const LatLng(14.892898355503444, -92.28235724716939),
  const LatLng(14.892754340399298, -92.282433886519),
  const LatLng(14.891589871946943, -92.28035185062653),
  const LatLng(14.89125246295396, -92.2804838406326),
  const LatLng(14.89080642623268, -92.2796153062233),
  const LatLng(14.89073252770627, -92.27965353945625),
  const LatLng(14.890880324733763, -92.27891754972215),
  const LatLng(14.891175918487964, -92.27866186500975),
  const LatLng(14.89152231689869, -92.27835121999212),
  const LatLng(14.89501800807428, -92.27619387887432),
  const LatLng(14.897622299031745, -92.27447820527524),
  const LatLng(14.897844074640481, -92.27482149140616),
  const LatLng(14.89825421570894, -92.27409875536175),
  const LatLng(14.898395171480372, -92.27383660332293),
  const LatLng(14.898456125297052, -92.27396472274133),
  const LatLng(14.899328524921355, -92.27340296837686),
  const LatLng(14.89848088778834, -92.27185962218685),
  const LatLng(14.903179164370458, -92.26897063209064),
  const LatLng(14.906740410456127, -92.26667883584166),
  const LatLng(14.907271830375132, -92.26785753448485),
  const LatLng(14.907807241204889, -92.26745930555091),
  const LatLng(14.910652389571052, -92.26571830827625),
  const LatLng(14.912263496453397, -92.264680792177),
  const LatLng(14.91254709782167, -92.26503078444301), // BASE DE REGRESO
];

const PolylineId polylineRuta29IDA = PolylineId("Ruta 29");
final Polyline polylineRuta29 = Polyline(
  polylineId: polylineRuta29IDA,
  color: Colors.red.shade400, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
const PolylineId polylineRuta29REGRESO = PolylineId("Ruta 29");
final Polyline polylineRuta29RE = Polyline(
  polylineId: polylineRuta29REGRESO,
  color: Colors.red.shade400, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
// Marker markerIR = const Marker(
//     markerId: MarkerId('markerIdaRUTA29'),
//     position: LatLng(14.89365134714328, -92.28222951490548),
//     infoWindow:
//         InfoWindow(title: "Base de Ida", snippet: "Ruta Las vegas derecha"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA29'),
//     position: const LatLng(14.91254709782167, -92.26503078444301),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
//     infoWindow: const InfoWindow(
//         title: "Base de Regreso", snippet: "Ruta Las vegas derecha"));

Set<Polyline> polylineIDA29 = {polylineRuta29};
Set<Polyline> polylineREGRESO29 = {polylineRuta29RE};

// Set<Marker> markerRuta29 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.91254709782167, -92.26503078444301),
  const LatLng(14.912884752796398, -92.2654026794155),
  const LatLng(14.912393818754312, -92.26580034468198),
  const LatLng(14.911812895681654, -92.26619167931491),
  const LatLng(14.911191342877883, -92.26666691978227),
  const LatLng(14.909759042205607, -92.26733079642662),
  const LatLng(14.90769320055358, -92.26849455274422),
  const LatLng(14.906605322054864, -92.26912992156653),
  const LatLng(14.906444981473081, -92.26901520835291),
  const LatLng(14.90621535772343, -92.2687079408049),
  const LatLng(14.905815589147037, -92.26804393833167),
  const LatLng(14.904720131138268, -92.26885540670781),
  const LatLng(14.900967975192971, -92.27128802547114),
  const LatLng(14.898806019007619, -92.27249766229602),
  const LatLng(14.899329571219386, -92.27340542713748),
  const LatLng(14.898920414532002, -92.27366092177569),
  const LatLng(14.899407169813768, -92.27457705254982),
  const LatLng(14.8984651878938, -92.27517860345078),
  const LatLng(14.89714600221625, -92.27601808583344),
  const LatLng(14.894882714101882, -92.2800396093533),
  const LatLng(14.895482819852814, -92.28045046229133),
  const LatLng(14.896141077177278, -92.28084027091195),
  const LatLng(14.896090678614621, -92.28092222277178),
  const LatLng(14.895437896166166, -92.2805497143181),
  const LatLng(14.89479863103466, -92.28166027741881),
  const LatLng(14.894464578121456, -92.28151749892501),
  const LatLng(14.894124658854318, -92.28129278419914),
  const LatLng(14.893432121972502, -92.28260493135912),
  const LatLng(14.892472135234609, -92.28426135225787),
  const LatLng(14.893321723712067, -92.28482756507864),
  const LatLng(14.89406975507425, -92.28523982046242),
  const LatLng(14.894059386698197, -92.28525792537384),
  const LatLng(14.893321723712067, -92.28482756507864),
  const LatLng(14.894059386698197, -92.28525792537384),
  const LatLng(14.893209298014392, -92.28299764658128),
  const LatLng(14.89365134714328, -92.28222951490548), // BASE DE REGRESO
];
