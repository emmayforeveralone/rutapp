import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.911521204074448, -92.26582914732838),
  const LatLng(14.911770024781944, -92.2662200792872),
  const LatLng(14.911203698066817, -92.26665593825106),
  const LatLng(14.910128617232829, -92.26716562696346),
  const LatLng(14.909723494943925, -92.26734851808772),
  const LatLng(14.909110083517428, -92.26768390236941),
  const LatLng(14.908515567650904, -92.26800917170996),
  const LatLng(14.907679464401234, -92.26848389598038),
  const LatLng(14.907181057799342, -92.2687580591745),
  const LatLng(14.906602465127524, -92.26913067470497),
  const LatLng(14.906457890736272, -92.26902159217961),
  const LatLng(14.906450114900716, -92.26900952223559),
  const LatLng(14.906129106689697, -92.26857810587582),
  const LatLng(14.905807601937198, -92.26804766390076),
  const LatLng(14.904664780135098, -92.26884738976311),
  const LatLng(14.903770992426022, -92.26940777655253),
  const LatLng(14.903607396278899, -92.26950076148742),
  const LatLng(14.902592770389397, -92.27017595484442),
  const LatLng(14.902045695291234, -92.27054247008027),
  const LatLng(14.901773407442276, -92.27070773782907),
  const LatLng(14.901154405739339, -92.27108083637243),
  const LatLng(14.90062642360637, -92.27144494443398),
  const LatLng(14.899678567397368, -92.27198624121516),
  const LatLng(14.899294632128127, -92.27221491256125),
  const LatLng(14.898787062629081, -92.27249616751165),
  const LatLng(14.897911405248683, -92.27306938473707),
  const LatLng(14.897007919191573, -92.27359022163782),
  const LatLng(14.896672255208253, -92.27298066279103),
  const LatLng(14.896381245323731, -92.27250378000016),
  const LatLng(14.893823852508019, -92.27405985058324),
  const LatLng(14.892856334472382, -92.27467266560929),
  const LatLng(14.892745521803306, -92.27474575580099),
  const LatLng(14.89267029228996, -92.27477382623711),
  const LatLng(14.89261650598437, -92.27467927837446),
  const LatLng(14.892355810749535, -92.27442733075807),
  const LatLng(14.892266382778196, -92.27435759332747),
  const LatLng(14.891800959076006, -92.27371092356228),
  const LatLng(14.89139107060864, -92.27315562785758),
  const LatLng(14.891778149939778, -92.27288789939544),
  const LatLng(14.891958302313501, -92.27270483863471),
  const LatLng(14.892245996421916, -92.27248090174808),
  const LatLng(14.892578644357892, -92.27223860625705),
  const LatLng(14.892874110643069, -92.27200572057225),
  const LatLng(14.89323441849683, -92.27174719865188),
  const LatLng(14.893554393324845, -92.27146352788453),
  const LatLng(14.89336011530701, -92.27119599524781),
  const LatLng(14.893110556155719, -92.27081071843702),
  const LatLng(14.89286332611601, -92.27044745892034),
  const LatLng(14.892948865678441, -92.27039649695183),
  const LatLng(14.89297219464413, -92.27029457301481),
  const LatLng(14.892996819660713, -92.27024763435959),
  const LatLng(14.893573856827164, -92.26993718888639),
  const LatLng(14.893621810670306, -92.27002838398793),
  const LatLng(14.893743639304894, -92.26996266987065),
  const LatLng(14.893721606471827, -92.26988354470902),
  const LatLng(14.893724198569963, -92.26979771402520)
];

const PolylineId polylineRuta49IDA = PolylineId("Ruta 49");
final Polyline polylineRuta49Ida = Polyline(
  polylineId: polylineRuta49IDA,
  color: Colors.redAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA49'),
    position: LatLng(14.911521204074448, -92.26582914732838),
    infoWindow: InfoWindow(
        title: "Base de Ida", snippet: "Ruta Unidad Administrativa"));
Marker markerRR = const Marker(
    markerId: MarkerId('markerRegresoRUTA49'),
    position: LatLng(14.893724198569963, -92.26979771402520),
    infoWindow: InfoWindow(
        title: "Base de Regreso", snippet: "Ruta Unidad Administrativa"));

Set<Polyline> polylineIDA49 = {polylineRuta49Ida};

Set<Marker> markerRuta49 = {markerIR, markerRR};
