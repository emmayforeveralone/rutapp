import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.867608436996724, -92.31542570678378), // BASE DE IDA
const LatLng(14.865424750943196, -92.31284649916228),
const LatLng(14.866738619982833, -92.31185220220321),
const LatLng(14.86780249893317, -92.31172030343984),
const LatLng(14.86780249893317, -92.31172030343984), // Repetición para cerrar el triángulo
const LatLng(14.868246157445284, -92.31098890708394),
const LatLng(14.870900048043119, -92.30963752274428),
const LatLng(14.872089230601723, -92.30922199330455),
const LatLng(14.873951816157, -92.30870192761523),
const LatLng(14.87555424296525, -92.30823029134275),
const LatLng(14.876009622599454, -92.30786298864537),
const LatLng(14.876332606936845, -92.30753482475544),
const LatLng(14.877659456425636, -92.3062025998014),
const LatLng(14.878175936205812, -92.30585185582773),
const LatLng(14.879774956382043, -92.3061850205997),
const LatLng(14.880969172187118, -92.30641706184028),
const LatLng(14.881800844051563, -92.30576661555487),
const LatLng(14.88220957355992, -92.30407736296166),
const LatLng(14.882453047745274, -92.3025977778858),
const LatLng(14.882897034680916, -92.30018444208369),
const LatLng(14.883180370784036, -92.29880791388229),
const LatLng(14.883275370127295, -92.29745983420295),
const LatLng(14.883611455771064, -92.2959518224094),
const LatLng(14.883816428914672, -92.29500211020975),
const LatLng(14.88414316882823, -92.29321443940235),
const LatLng(14.884468126333513, -92.29144383667409),
const LatLng(14.884655799113219, -92.29107502864211),
const LatLng(14.884831833128713, -92.29090643068093),
const LatLng(14.884978770497392, -92.29086428119155),
const LatLng(14.88505713654363, -92.29087336830983),
const LatLng(14.886808587356661, -92.29121736435694),
const LatLng(14.887856973172239, -92.28444792027139),
const LatLng(14.888961371294712, -92.27776976148036),
const LatLng(14.889317398554708, -92.27720235511694),
const LatLng(14.889736121679245, -92.27665021995844),
const LatLng(14.89282969575446, -92.27470404364946),
const LatLng(14.89461278118982, -92.2735535318759),
const LatLng(14.899047080667327, -92.27081824262999),
const LatLng(14.899357397024994, -92.27129280676898),
const LatLng(14.913724111525928, -92.2623767482352),
const LatLng(14.91541980799566, -92.26530021758649),
const LatLng(14.915719116940721, -92.26524338355786),

  
];

const PolylineId polylineRuta42Reg = PolylineId("Ruta 42");
final Polyline polylineRuta42R = Polyline(
  polylineId: polylineRuta42Reg,
  color: Color.fromARGB(255, 78, 141, 151), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA42R'),
    position: LatLng(14.867608436996724, -92.31542570678378 ),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 42"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA42R'),
    position: const LatLng(14.915719116940721, -92.26524338355786),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Ruta 42", snippet: "RUTA REGRESO 42"));

Set<Polyline> polylineIDA42Regreso = {polylineRuta42R};

Set<Marker> markerRuta42Reg = {markerIR, markerRR};