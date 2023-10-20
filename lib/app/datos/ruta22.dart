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
  color: Colors.indigo.shade800, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
const PolylineId polylineRuta22REGRESO = PolylineId("Ruta 22");
final Polyline polylineRuta22RE = Polyline(
  polylineId: polylineRuta22REGRESO,
  color: Colors.indigo.shade800, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
Marker markerIR = Marker(
    markerId: const MarkerId('markerIdaRUTA22'),
    position: const LatLng(14.931119465346342, -92.24674225981146),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(
        title: "Base de Ida", snippet: "Ruta Colinas del rey"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA22'),
    position: const LatLng(14.912431200770666, -92.26455513546168),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "Ruta Colinas del rey"));

Set<Polyline> polylineIDA22 = {polylineRuta22};
Set<Polyline> polylineREGRESO22 = {polylineRuta22RE};

Set<Marker> markerRuta22 = {markerIR, markerRR};

List<LatLng> ruta2 = [
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
