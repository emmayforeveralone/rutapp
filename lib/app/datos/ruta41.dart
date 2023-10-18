import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.88687818711857, -92.30965664285092),
const LatLng(14.887236139205527, -92.30969607086313),
const LatLng(14.887617184330631, -92.3097474467607),
const LatLng(14.888350405627175, -92.30981554969334),
const LatLng(14.8890928618161, -92.30992905457876),
const LatLng(14.889167448928196, -92.30912727334618),
const LatLng(14.88925507877114, -92.30859736381333),
const LatLng(14.889312767192822, -92.3083337309416),
const LatLng(14.889365882102984, -92.30790121758606),
const LatLng(14.889757612391284, -92.30664050056849),
const LatLng(14.889968126963955, -92.30603163402516),
const LatLng(14.890163998910433, -92.30542968450429),
const LatLng(14.890358583436429, -92.30477626811296),
const LatLng(14.890449236382942, -92.30450750365247),
const LatLng(14.890606549266726, -92.30397048073819),
const LatLng(14.890915999304944, -92.30294535240807),
const LatLng(14.891175798438514, -92.3023718540364),
const LatLng(14.891615724249082, -92.30160002082071),
const LatLng(14.89140557607061, -92.30142916609158),
const LatLng(14.891814952145122, -92.30072036036823),
const LatLng(14.890980665204053, -92.2999701489426),
const LatLng(14.888911645034996, -92.29799745156866),
const LatLng(14.888868922084791, -92.29785646655532),
const LatLng(14.888775393434493, -92.2977967271429),
const LatLng(14.888745371883813, -92.29773937730694),
const LatLng(14.889039813836089, -92.29741439489267),
const LatLng(14.889165673215741, -92.29719933300585),
const LatLng(14.889435866498214, -92.29684089652595),
const LatLng(14.889688739391197, -92.29653025157688),
const LatLng(14.889986644064013, -92.29615150369597),
const LatLng(14.89029724966131, -92.29578948284967),
const LatLng(14.890745259917928, -92.29529484050572),
const LatLng(14.891134381474885, -92.29488980728028),
const LatLng(14.891462795362628, -92.29440947652738),
const LatLng(14.89164176767672, -92.29398532669325),
const LatLng(14.891855412412523, -92.2935293234535),
const LatLng(14.892205436555589, -92.29292749135115),
const LatLng(14.892569153071314, -92.29219867050958),
const LatLng(14.892741196547034, -92.29173748223249),
const LatLng(14.892972468709106, -92.29094665447087),
const LatLng(14.893216100244043, -92.29016645773136),
const LatLng(14.893293461862678, -92.28995259061962),
const LatLng(14.89370834207406, -92.28896898290004),
const LatLng(14.893947354188274, -92.28851974251168),
const LatLng(14.894325023480615, -92.28789193994321),
const LatLng(14.894866410506566, -92.2870799340635),
const LatLng(14.895241109947056, -92.28657631984669),
const LatLng(14.895530924472263, -92.28625731137818),
const LatLng(14.895763006739141, -92.2860016266866),
const LatLng(14.895959692601776, -92.28571294145517),
const LatLng(14.896056682041142, -92.28539512778106),
const LatLng(14.89621255783873, -92.28487778446167),
const LatLng(14.896426165228052, -92.28430548087921),
const LatLng(14.896825668209187, -92.28347390824152),
const LatLng(14.897627178588065, -92.28190576562967),
const LatLng(14.898072332290855, -92.28083697486593),
const LatLng(14.898421028801913, -92.28005916769837),
const LatLng(14.89853995496919, -92.2795967846344),
const LatLng(14.899087185606554, -92.27843768116932),
const LatLng(14.899168008972415, -92.27821784012728),
const LatLng(14.899509496025651, -92.27675900443941),
const LatLng(14.899624450599033, -92.2755904987969),
const LatLng(14.899779956706363, -92.27493660098473),
const LatLng(14.899936984419869, -92.27445390653232),
const LatLng(14.899337360242422, -92.27339527010012),
const LatLng(14.899002121763997, -92.27284328210129),
const LatLng(14.898788416512344, -92.27249232280421),
const LatLng(14.899404746665654, -92.2721599191792),
const LatLng(14.899686473270652, -92.27197353221032),
const LatLng(14.900643993304694, -92.27143696462088),
const LatLng(14.901158114398918, -92.27106542561741),
const LatLng(14.901783926183086, -92.27068276549731),
const LatLng(14.90269952872597, -92.27011741598089),
const LatLng(14.90361797536202, -92.26948857306228),
const LatLng(14.904676309410165, -92.26884107043553),
const LatLng(14.905002151965755, -92.26936825788673),
const LatLng(14.906121211695094, -92.2685920358363),
const LatLng(14.907273648820656, -92.26783775435223),
const LatLng(14.907697172727582, -92.26850166602107),
const LatLng(14.908166260221039, -92.26914727297864)

];

const PolylineId polylineRuta5IDA = PolylineId("Ruta 41");
final Polyline polylineRuta4 = Polyline(
  polylineId: polylineRuta5IDA,
  color: Color.fromARGB(255, 69, 116, 60), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA41'),
    position: LatLng(14.88687818711857, -92.30965664285092 ),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 41"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA41'),
    position: const LatLng(14.908166260221039, -92.26914727297864),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Ruta 41", snippet: "RUTA REGRESO 41"));

Set<Polyline> polylineIDA5 = {polylineRuta4};

Set<Marker> markerRuta5 = {markerIR, markerRR};