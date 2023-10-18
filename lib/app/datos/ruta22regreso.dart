import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.912431200770666, -92.26455513546168),
  const LatLng(14.91296989703663, -92.26420070124368),
  const LatLng(14.912476798831506, -92.26311930225552),
  const LatLng(14.912013089559215, -92.26221025120483),
  const LatLng(14.911376304065756, -92.26069629259695),
  const LatLng(14.914157046893145, -92.25904499896848),
  const LatLng(14.915178992722161, -92.25855958718857),
  const LatLng(14.921988858832966, -92.25483181394392),
  const LatLng(14.9274479035609, -92.25298362125137),
  const LatLng(14.927601476759795, -92.2528346178699),
  const LatLng(14.928028601642147, -92.2524223751812),
  const LatLng(14.92780727886594, -92.25214820350341),
  const LatLng(14.92783340146084, -92.2519589586963),
  const LatLng(14.928218709056031, -92.2509079740243),
  const LatLng(14.928675852777612, -92.25072210857844),
  const LatLng(14.929472586630817, -92.25025575525133),
  const LatLng(14.929087281283744, -92.24824502900869),
  const LatLng(14.929959115276969, -92.24804226669258),
  const LatLng(14.929808911937611, -92.24701831703594),
  const LatLng(14.931119465346342, -92.24674225981146), // BASE DE REGRESO
];

const PolylineId polylineRuta22REGRESO = PolylineId("Ruta 22");
final Polyline polylineRuta22 = Polyline(
  polylineId: polylineRuta22REGRESO,
  color: Colors.indigo.shade800, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA22'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 22"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA22'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 22"));

Set<Polyline> polylineREGRESO22 = {polylineRuta22};

Set<Marker> markerRuta22regreso = {markerIR, markerRR};
