import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.931119465346342, -92.24674225981146),
  const LatLng(14.92979443475255, -92.24703077195107),
  const LatLng(14.929970944676745, -92.24804836813158),
  const LatLng(14.92907484770954, -92.24823942108536),
  const LatLng(14.92947674573242, -92.25025741794285),
  const LatLng(14.92868448669966, -92.25071713910725),
  const LatLng(14.928207591505423, -92.25091814274023),
  const LatLng(14.927797999213253, -92.25213013492746),
  const LatLng(14.928019140680835, -92.25239681301903),
  const LatLng(14.92763839261361, -92.25283066240168),
  const LatLng(14.927388406147102, -92.25297793239255),
  const LatLng(14.921743979827816, -92.25495940200477),
  const LatLng(14.915095764960302, -92.25860519533228),
  const LatLng(14.911834401969086, -92.26042249957636),
  const LatLng(14.912054367361042, -92.26093524518365),
  const LatLng(14.912694414196555, -92.26199789337282),
  const LatLng(14.91338970801673, -92.26338860657808),
  const LatLng(14.910848804643601, -92.26479776450411),
  const LatLng(14.911204365863814, -92.2653413291053),
  const LatLng(14.912431200770666, -92.26455513546168), // BASE DE REGRESO
];

const PolylineId polylineRuta22IDA = PolylineId("Ruta 22");
final Polyline polylineRuta22 = Polyline(
  polylineId: polylineRuta22IDA,
  color: Colors.green.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA22'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 22"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA22'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 22"));

Set<Polyline> polylineIDA22 = {polylineRuta22};

Set<Marker> markerRuta22ida = {markerIR, markerRR};
