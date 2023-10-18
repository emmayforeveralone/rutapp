import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.890754594415272, -92.28376439696174),
  const LatLng(14.890596546395866, -92.28374540893829),
  const LatLng(14.889749638064716, -92.28355428780455),
  const LatLng(14.888029139089788, -92.28326964992692),
  const LatLng(14.88815802197829, -92.2823200357821),
  const LatLng(14.890102278137523, -92.28263082501414),
  const LatLng(14.890317821542055, -92.28262392709067),
  const LatLng(14.890453369356061, -92.28257794094009),
  const LatLng(14.892279589966451, -92.28139472848434),
  const LatLng(14.892411590053586, -92.28160657930326),
  const LatLng(14.893470172284294, -92.28098208402548),
  const LatLng(14.893505192529924, -92.28089567119144),
  const LatLng(14.894517467855765, -92.28155451910715),
  const LatLng(14.895025456750439, -92.28172347836453),
  const LatLng(14.895646260350079, -92.28186204308717),
  const LatLng(14.895983406102212, -92.28170559932906),
  const LatLng(14.896631994434772, -92.28125034799807),
  const LatLng(14.894808292299649, -92.28015519848923),
  const LatLng(14.894887686122729, -92.28006319022008),
  const LatLng(14.896476945270736, -92.2772740227823),
  const LatLng(14.898413261117431, -92.27384666759308),
  const LatLng(14.898459055771168, -92.2739776805995),
  const LatLng(14.899337233717592, -92.27338951582591),
  const LatLng(14.898999449554994, -92.27284805660739),
  const LatLng(14.898465768666368, -92.27186558984549),
  const LatLng(14.901407742449239, -92.27001436969883),
  const LatLng(14.90672314900892, -92.26668592622937),
  const LatLng(14.907282834392953, -92.26783822158218),
  const LatLng(14.907789135630988, -92.2674637938921),
  const LatLng(14.912269889491814, -92.26467716220067),
  const LatLng(14.912552693521517, -92.26503143785993) // BASE DE REGRESO
];

const PolylineId polylineRuta28IDA = PolylineId("Ruta 28");
final Polyline polylineRuta28 = Polyline(
  polylineId: polylineRuta28IDA,
  color: Colors.lightGreen.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA28'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 28"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA28'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 28"));

Set<Polyline> polylineIDA28 = {polylineRuta28};

Set<Marker> markerRuta28ida = {markerIR, markerRR};
