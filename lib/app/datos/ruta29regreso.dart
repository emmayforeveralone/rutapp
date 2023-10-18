import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
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

const PolylineId polylineRuta29REGRESO = PolylineId("Ruta 29");
final Polyline polylineRuta29 = Polyline(
  polylineId: polylineRuta29REGRESO,
  color: Colors.red.shade400, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA29'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 29"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA29'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 29"));

Set<Polyline> polylineREGRESO29 = {polylineRuta29};

Set<Marker> markerRuta29regreso = {markerIR, markerRR};
