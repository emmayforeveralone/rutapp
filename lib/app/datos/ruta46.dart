import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.890174911732707, -92.26636199352828),
  const LatLng(14.889250707658736, -92.26652889756124),
  const LatLng(14.888339578052836, -92.26659205044072),
  const LatLng(14.887406647100503, -92.26669580159938),
  const LatLng(14.887511275068167, -92.26762054017537),
  const LatLng(14.887655138444728, -92.26856783333544),
  const LatLng(14.887711811869098, -92.26898734889541),
  const LatLng(14.887777204264042, -92.26950159375373),
  const LatLng(14.887480758575624, -92.26952414835736),
  const LatLng(14.887232267027487, -92.26969105239034),
  const LatLng(14.886844270869464, -92.2699842621923),
  const LatLng(14.886521666791252, -92.27025491738787),
  const LatLng(14.886138028884307, -92.27053910534502),
  const LatLng(14.886757080614954, -92.27142775654757),
  const LatLng(14.887110200878082, -92.27193297957277),
  const LatLng(14.886953258611172, -92.27204124164821),
  const LatLng(14.887402287575917, -92.27265923767028),
  const LatLng(14.888653460420755, -92.2715721059961),
  const LatLng(14.888269826313655, -92.2710217737793),
  const LatLng(14.887812080178682, -92.27136911460467),
  const LatLng(14.887489477556645, -92.27085938066614),
  const LatLng(14.886848630375106, -92.26995268578436),
  const LatLng(14.887476399065756, -92.26951512655094),
  const LatLng(14.887794642215434, -92.26949708287171),
  const LatLng(14.888657819922237, -92.26936626617777),
  const LatLng(14.889534072519565, -92.26925349318253),
  const LatLng(14.889459961741302, -92.26836033106017),
  const LatLng(14.890344929966481, -92.268202448857),
  const LatLng(14.890153114507369, -92.2663755263026)
];

const PolylineId polylineRuta46IDA = PolylineId("Ruta 46");
final Polyline polylineRuta46 = Polyline(
  polylineId: polylineRuta46IDA,
  color:
      const Color.fromARGB(255, 237, 172, 10), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA46'),
    position: LatLng(14.890174911732707, -92.26636199352828),
    infoWindow:
        InfoWindow(title: "Base de Ida", snippet: "Ruta Teofilio Acebo"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA46'),
    position: const LatLng(14.890153114507369, -92.2663755263026),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "Ruta Teofilio Acebo"));

Set<Polyline> polylineIDA46 = {polylineRuta46};

Set<Marker> markerRuta46 = {markerIR, markerRR};
