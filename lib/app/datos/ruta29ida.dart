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
  color: Colors.blueAccent.shade700, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA29'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 29"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA29'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 29"));

Set<Polyline> polylineIDA29 = {polylineRuta29};

Set<Marker> markerRuta29ida = {markerIR, markerRR};
