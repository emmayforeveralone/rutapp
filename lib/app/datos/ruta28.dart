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
const PolylineId polylineRuta28REGRESO = PolylineId("Ruta 28");
final Polyline polylineRuta28RE = Polyline(
  polylineId: polylineRuta28REGRESO,
  color: Colors.green, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
Marker markerIR = Marker(
    markerId: const MarkerId('markerIdaRUTA28'),
    position: const LatLng(14.890752108317402, -92.28375170041973),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow: const InfoWindow(
        title: "Base de Ida", snippet: "Ruta Las vegas izquierda"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA28'),
    position: const LatLng(14.912552693521517, -92.26503143785993),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow: const InfoWindow(
        title: "Base de Regreso",
        snippet: "Ruta Las vegas izquierda y Ruta Las vegas derecha"));

Set<Polyline> polylineIDA28 = {polylineRuta28};
Set<Polyline> polylineREGRESO28 = {polylineRuta28RE};

Set<Marker> markerRuta28 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.912552693521517, -92.26503143785993),
  const LatLng(14.912874134736061, -92.26540165649965),
  const LatLng(14.911229696603636, -92.26666742077404),
  const LatLng(14.909733828256428, -92.2673582636555),
  const LatLng(14.906606300334923, -92.26914247938187),
  const LatLng(14.906232487871351, -92.26875386974763),
  const LatLng(14.905825625952886, -92.26804636570527),
  const LatLng(14.902345093816654, -92.27044454516694),
  const LatLng(14.898794271030603, -92.27248656250148),
  const LatLng(14.899349212247303, -92.27340591033943),
  const LatLng(14.898468775984098, -92.27396083196106),
  const LatLng(14.898412748100945, -92.27382555254945),
  const LatLng(14.89839407213666, -92.27383107415811),
  const LatLng(14.898250000357688, -92.27409611137264),
  const LatLng(14.893863224287841, -92.27683582936503),
  const LatLng(14.891143305875769, -92.27865809886123),
  const LatLng(14.892178962637304, -92.27964614663942),
  const LatLng(14.893432181173134, -92.28086332747489),
  const LatLng(14.893601386868223, -92.28094544827658),
  const LatLng(14.892918573691775, -92.28139788741036),
  const LatLng(14.892375326008576, -92.28172245410637),
  const LatLng(14.892195637517803, -92.28142495988142),
  const LatLng(14.890354217908875, -92.28262691985577),
  const LatLng(14.890101865355899, -92.28263191238459),
  const LatLng(14.888414033745256, -92.28236036779145),
  const LatLng(14.888231514418225, -92.28329950317774),
  const LatLng(14.889737650453513, -92.2835399333386),
  const LatLng(14.890608356453798, -92.28373620592883),
  const LatLng(14.890752108317402, -92.28375170041973), // BASE DE REGRESO
];
