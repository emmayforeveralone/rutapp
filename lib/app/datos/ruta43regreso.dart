import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.91174663579265, -92.2648856067777),
const LatLng(14.911786807246573, -92.26497121770215),
const LatLng(14.911207923078114, -92.26534503417174),
const LatLng(14.910823639904065, -92.26480383288514),
const LatLng(14.911457579591525, -92.2644539761521),
const LatLng(14.911173069283723, -92.26391704125155),
const LatLng(14.910734014164095, -92.26309441453719),
const LatLng(14.911302565715284, -92.26269160836348),
const LatLng(14.912016946114965, -92.2622318195279),
const LatLng(14.911576405364263, -92.26124514123289),
const LatLng(14.911362040717849, -92.26069163887324),
const LatLng(14.911194018201172, -92.26038565162017),
const LatLng(14.910923213401007, -92.25971002322694),
const LatLng(14.910565389713883, -92.25881673819158),
const LatLng(14.91012418288128, -92.257781339453),
const LatLng(14.90972528893471, -92.25659874882497),
const LatLng(14.909280937294595, -92.25564756043536),
const LatLng(14.91016324317742, -92.25517274751712),
const LatLng(14.91102472461719, -92.25470551583145),
const LatLng(14.911946748115389, -92.25421501206502),
const LatLng(14.912834899955657, -92.25376105477301),
const LatLng(14.913756915697855, -92.25332425579973),
const LatLng(14.913323317364714, -92.25235970568406),
const LatLng(14.912921437935623, -92.25139191742569),
const LatLng(14.912565085727199, -92.25036794607698),
const LatLng(14.912311833789579, -92.2498334402663),
const LatLng(14.912157875432811, -92.24955059503363),
const LatLng(14.91201775593369, -92.24901354712345),
const LatLng(14.91233259221353, -92.24859823006437),
const LatLng(14.912785817260099, -92.24830643402834),
const LatLng(14.912638778706347, -92.24794661192853),
const LatLng(14.912906061044644, -92.24770297861339),
const LatLng(14.913201326287366, -92.24631487560329),
const LatLng(14.91347501684796, -92.24539420958992),
const LatLng(14.913627244404182, -92.2456376713092),
const LatLng(14.9137261573589, -92.24593234991995),
const LatLng(14.91407558823053, -92.24669316780013),
const LatLng(14.914357869835388, -92.24732682918545),
const LatLng(14.915274689512007, -92.24686854830138),
const LatLng(14.91574520678008, -92.24662687673649),
const LatLng(14.91617766659336, -92.24595556683848),
const LatLng(14.916321243055569, -92.24599316019219),
const LatLng(14.917253622825383, -92.24446078346838),
const LatLng(14.917668781355752, -92.24375904084023),
const LatLng(14.918000907591233, -92.24317544877785),
const LatLng(14.91756288984885, -92.24290480285407),
const LatLng(14.916459545716474, -92.24221970534069),
const LatLng(14.915802059986996, -92.24207218213094),
const LatLng(14.915784604572895, -92.2420691714374),
const LatLng(14.915825333839129, -92.24120209623717),
const LatLng(14.915752602999616, -92.23991653681445),
const LatLng(14.915758421467562, -92.23907655772226)

  
];

const PolylineId polylineRuta5IDA = PolylineId("Ruta 43 Regreso");
final Polyline polylineRuta4 = Polyline(
  polylineId: polylineRuta5IDA,
  color: Color.fromARGB(255, 56, 128, 244), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA43R'),
    position: LatLng(14.91174663579265, -92.2648856067777 ),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 43"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA43R'),
    position: const LatLng(14.915758421467562, -92.23907655772226),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Ruta 43", snippet: "RUTA REGRESO 43"));

Set<Polyline> polylineIDA5 = {polylineRuta4};

Set<Marker> markerRuta43 = {markerIR, markerRR};