import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.871950910080855, -92.25113979291167), //BASE DE IDA
  const LatLng(14.872733904496886, -92.25157523984468),
  const LatLng(14.872829331752584, -92.25165878489706),
  const LatLng(14.874449477309264, -92.25237716727882),
  const LatLng(14.87449616307426, -92.252866519814),
  const LatLng(14.874534391946503, -92.25318704153652),
  const LatLng(14.874722797979718, -92.25355413342724),
  const LatLng(14.875173014333907, -92.25347058837559),
  const LatLng(14.875082481775982, -92.25241741440169),
  const LatLng(14.876893125773758, -92.25202247415504),
  const LatLng(14.87738248641072, -92.25206298084501),
  const LatLng(14.878268226337722, -92.25202247415258),
  const LatLng(14.879220025677812, -92.25139208876509),
  const LatLng(14.879555234214468, -92.25126803702176),
  const LatLng(14.87961640360076, -92.25128069536201),
  const LatLng(14.881463710847877, -92.24964270602224),
  const LatLng(14.881735300386119, -92.24962751601203),
  const LatLng(14.884271349853032, -92.2507987517811),
  const LatLng(14.884121779351899, -92.25172008252756),
  const LatLng(14.884217201561913, -92.25175552588234),
  const LatLng(14.885291292425524, -92.25323071110144),
  const LatLng(14.888255315020771, -92.2518136344135),
  const LatLng(14.888470622492408, -92.25164907597721),
  const LatLng(14.890085421653433, -92.25096299388841),
  const LatLng(14.890332533785463, -92.25094274054281),
  const LatLng(14.89114130718213, -92.25122990493745),
  const LatLng(14.891241619570422, -92.25124256327842),
  const LatLng(14.891266085999497, -92.25145016007073),
  const LatLng(14.891058121261027, -92.25163497185312),
  const LatLng(14.890837923083941, -92.25205016544331),
  const LatLng(14.890705804066656, -92.2525033340577),
  const LatLng(14.890681272159643, -92.25311623935467),
  const LatLng(14.894004349791816, -92.26064238682095),
  const LatLng(14.894006796403477, -92.2607639068945),
  const LatLng(14.895526502132816, -92.2644382619617),
  const LatLng(14.904476367969265, -92.26043529216662),
  const LatLng(14.906465679368955, -92.26343110640805),
  const LatLng(14.91121045401459, -92.2653488800508),
  const LatLng(14.911777003350949, -92.26622488492175),
  const LatLng(14.910895251721378, -92.26681775015547),
];

const PolylineId polylineRuta2IDA = PolylineId("Ruta 2");
final Polyline polylineRuta2 = Polyline(
  polylineId: polylineRuta2IDA,
  color: Colors.amber, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIDARUTA2'),
    position: LatLng(14.871950910080855, -92.25113979291167),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 2"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA2'),
    position: const LatLng(14.910895251721378, -92.26681775015547),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 2"));

Set<Polyline> polylineIDA2 = {polylineRuta2};

Set<Marker> markerRuta2 = {markerIR, markerRR};
