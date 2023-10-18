import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.874447122686213, -92.29833607957244),
  const LatLng(14.874830097541535, -92.3011240620452),
  const LatLng(14.874910459621669, -92.30145933815412),
  const LatLng(14.875301900242146, -92.30204137752843),
  const LatLng(14.876561763931862, -92.30107846447531),
  const LatLng(14.876883209449888, -92.30097117611139),
  const LatLng(14.876670640693227, -92.29974540655353),
  const LatLng(14.876668048390025, -92.29951741878018),
  const LatLng(14.88045764999247, -92.29891340893609),
  const LatLng(14.88305369555296, -92.29853541234903),
  const LatLng(14.88310616585297, -92.29845518659653),
  const LatLng(14.883254202079515, -92.29746759929245),
  const LatLng(14.883370479015666, -92.29722372089478),
  const LatLng(14.88404917516253, -92.29391584990802),
  const LatLng(14.884400658637643, -92.29189046072156),
  const LatLng(14.884451975722392, -92.29146788303586),
  const LatLng(14.88457385374971, -92.29117583981854),
  const LatLng(14.884794089308516, -92.29094795761105),
  const LatLng(14.884975836941216, -92.29086830949232),
  const LatLng(14.886859498226766, -92.2912241270467),
  const LatLng(14.887955399966858, -92.28401687911455),
  const LatLng(14.888786275157292, -92.27823752823438),
  const LatLng(14.8884802440334, -92.27766051000522),
  const LatLng(14.888463588040917, -92.27742114060608),
  const LatLng(14.888528361337826, -92.27731964798085),
  const LatLng(14.888685667834979, -92.27730049842891),
  const LatLng(14.896313027835252, -92.2723719265988),
  const LatLng(14.898982446279119, -92.27071654231878),
  const LatLng(14.899345913212139, -92.27129826205312),
  const LatLng(14.905515477259739, -92.26746380829272),
  const LatLng(14.911182608587682, -92.26392364751531),
  const LatLng(14.910933980692793, -92.26350430388831), // BASE DE REGRESO
];

const PolylineId polylineRuta27IDA = PolylineId("Ruta 27");
final Polyline polylineRuta27 = Polyline(
  polylineId: polylineRuta27IDA,
  color: Colors.amber.shade900, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA27'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 27"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA3'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 27"));

Set<Polyline> polylineIDA27 = {polylineRuta27};

Set<Marker> markerRuta27ida = {markerIR, markerRR};
