import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
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

const PolylineId polylineRuta28REGRESO = PolylineId("Ruta 28");
final Polyline polylineRuta28 = Polyline(
  polylineId: polylineRuta28REGRESO,
  color: Colors.pink.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA28'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 28"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA28'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 28"));

Set<Polyline> polylineREGRESO28 = {polylineRuta28};

Set<Marker> markerRuta28regreso = {markerIR, markerRR};
