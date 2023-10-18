import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
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

const PolylineId polylineRuta21REGRESO = PolylineId("Ruta 21");
final Polyline polylineRuta21 = Polyline(
  polylineId: polylineRuta21REGRESO,
  color: Colors.grey.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA21'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 21"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA21'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 21"));

Set<Polyline> polylineREGRESO21 = {polylineRuta21};

Set<Marker> markerRuta21regreso = {markerIR, markerRR};
