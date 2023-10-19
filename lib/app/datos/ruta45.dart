import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.890119393865326, -92.26613108525414),
const LatLng(14.889677008791738, -92.2661773484821),
const LatLng(14.889240767438723, -92.26623870351878),
const LatLng(14.889355122053566, -92.26743074423112),
const LatLng(14.889444064489808, -92.26835545228373),
const LatLng(14.889566889696884, -92.26925824786015),
const LatLng(14.888647816609243, -92.26936342792301),
const LatLng(14.888694405661917, -92.26975347065608),
const LatLng(14.888757936172059, -92.27018733841538),
const LatLng(14.887902390377887, -92.2705598511465),
const LatLng(14.887508499349448, -92.27085786132457),
const LatLng(14.887788034985169, -92.27133555413481),
const LatLng(14.888224279278937, -92.27101563144363),
const LatLng(14.88863511047635, -92.27160726929718),
const LatLng(14.887411085311644, -92.27268098244566),
const LatLng(14.886953662362016, -92.27203675456069),
const LatLng(14.887144255375674, -92.27189651447688),
const LatLng(14.886098109416963, -92.2705160261441),
const LatLng(14.887461910016466, -92.26953872806007),
const LatLng(14.888656287312374, -92.26933713293133),
const LatLng(14.889466391958393, -92.26832987216794),
const LatLng(14.89034310820337, -92.26817210207368),
const LatLng(14.890182165398828, -92.26669081615206)

  
];

const PolylineId polylineRuta45IDA = PolylineId("Ruta 40");
final Polyline polylineRuta45 = Polyline(
  polylineId: polylineRuta45IDA,
  color: Color.fromARGB(255, 198, 20, 20), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA45'),
    position: LatLng(14.890119393865326, -92.26613108525414 ),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 45"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA45'),
    position: const LatLng(14.890182165398828, -92.26669081615206),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Ruta 45", snippet: "RUTA REGRESO 45"));

Set<Polyline> polylineIDA45 = {polylineRuta45};

Set<Marker> markerRuta45 = {markerIR, markerRR};