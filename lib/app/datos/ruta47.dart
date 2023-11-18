import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.884064037515538, -92.24828062922347),
  const LatLng(14.884341880341575, -92.24807793916798),
  const LatLng(14.884753646736996, -92.24785870298766),
  const LatLng(14.885181403234888, -92.24761464761114),
  const LatLng(14.885597165748957, -92.24737472876765),
  const LatLng(14.885974949252205, -92.24715135605562),
  const LatLng(14.886242795369125, -92.24701278223907),
  const LatLng(14.886986366405477, -92.24660326559314),
  const LatLng(14.887122287717808, -92.24604276553099),
  const LatLng(14.88718625065624, -92.24556085958744),
  const LatLng(14.887078313186613, -92.24529198502667),
  const LatLng(14.886928399940558, -92.24500035952312),
  const LatLng(14.886696533921029, -92.24450190745276),
  const LatLng(14.886532628480879, -92.24435506057725),
  const LatLng(14.886422691835325, -92.24429094433584),
  const LatLng(14.886302760880062, -92.24429508086523),
  const LatLng(14.886272778132136, -92.24407584468491),
  const LatLng(14.887096302764807, -92.24313064717337),
  const LatLng(14.887957802109662, -92.2429403667078),
  const LatLng(14.887843868527728, -92.24242536848908),
  const LatLng(14.887761916259501, -92.2419145068236),
  const LatLng(14.888693371928136, -92.24174697728492),
  const LatLng(14.889662801128472, -92.24152980936698),
  const LatLng(14.889848691174326, -92.24142639607437),
  const LatLng(14.890354391258114, -92.24143466913515),
  const LatLng(14.890740161656668, -92.24156496988384),
  const LatLng(14.891455733949662, -92.2413395289059),
  const LatLng(14.891669605665586, -92.24126920786483),
  const LatLng(14.892305223113018, -92.24106444954484),
  const LatLng(14.89310274047397, -92.24074593659967),
  const LatLng(14.893874270752075, -92.24006961365417),
  const LatLng(14.894206067903498, -92.23986278706101),
  const LatLng(14.894929623763401, -92.24023093838757),
  const LatLng(14.895263418044296, -92.24019370960224),
  const LatLng(14.895523257558962, -92.2400034291392),
  const LatLng(14.896292780407368, -92.23930021874226),
  const LatLng(14.896676541425403, -92.23930642353801),
  const LatLng(14.896854430421723, -92.23943465602126),
  const LatLng(14.897747870646361, -92.24027644022752),
  const LatLng(14.897917763790408, -92.24053910999942),
  const LatLng(14.897970271414914, -92.24076461215992),
  const LatLng(14.898020239946145, -92.24164776167879),
  const LatLng(14.897934294065564, -92.24267982635662),
  const LatLng(14.897790384600132, -92.24287217509034),
  const LatLng(14.897862339341529, -92.24306866034628),
  const LatLng(14.89799425630675, -92.2431265717986),
  const LatLng(14.897628424863404, -92.25245726358337),
  const LatLng(14.898352046522723, -92.25379104976005),
  const LatLng(14.90047767105744, -92.25631822353797),
  const LatLng(14.901619620267414, -92.25692661724736),
  const LatLng(14.902795482428873, -92.25786260754914),
  const LatLng(14.903683027979898, -92.25923963678139),
  const LatLng(14.90530547440016, -92.26165566172709),
  const LatLng(14.908731227021004, -92.26691475717591),
  const LatLng(14.912286942292193, -92.26469178026126),
  const LatLng(14.912637422975234, -92.26508372619396)
];

const PolylineId polylineRuta47IDA = PolylineId("Ruta 47");
final Polyline polylineRuta47Ida = Polyline(
  polylineId: polylineRuta47IDA,
  color: Colors.cyan, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
// Marker markerIR = Marker(
//     markerId: const MarkerId('markerIdaRUTA47'),
//     position: const LatLng(14.884064037515538, -92.24828062922347),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
//     infoWindow: const InfoWindow(
//         title: "Base de Ida", snippet: "Ruta Venustiano Carranza"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA47'),
//     position: const LatLng(14.912637422975234, -92.26508372619396),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
//     infoWindow: const InfoWindow(
//         title: "Base de Regreso", snippet: "Ruta Venustiano Carranza"));

Set<Polyline> polylineIDA47 = {polylineRuta47Ida};

// Set<Marker> markerRuta47 = {markerIR, markerRR};
