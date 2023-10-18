import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.915740303111379, -92.26524009184264),
  const LatLng(14.916707440057165, -92.26482233825031),
  const LatLng(14.917217884310727, -92.2643768768918),
  const LatLng(14.917217884310727, -92.2643768768918),
  const LatLng(14.916594997539049, -92.26352013766999),
  const LatLng(14.916387785681483, -92.26312750472448),
  const LatLng(14.916755513629539, -92.26327549714239),
  const LatLng(14.917269164314037, -92.2635231579234),
  const LatLng(14.9171932841765, -92.26398223644432),
  const LatLng(14.917310022838546, -92.26413928962252),
  const LatLng(14.917820582822326, -92.26473039542435),
  const LatLng(14.9190870219068, -92.2656406614824),
  const LatLng(14.919595179679295, -92.26633373638381),
  const LatLng(14.920353008105335, -92.26840384171065),
  const LatLng(14.920291324497356, -92.26906347881118),
  const LatLng(14.920912208873851, -92.2694488516141),
  const LatLng(14.920992985733578, -92.2696825779187),
  const LatLng(14.920923748427096, -92.27000501785719),
  const LatLng(14.920984743202908, -92.2701500305136),
  const LatLng(14.921142999825786, -92.27017391495347),
  const LatLng(14.921915176540544, -92.269942480716),
  const LatLng(14.923160530336503, -92.26977856498071),
  const LatLng(14.924016095171245, -92.26946465520031),
  const LatLng(14.92451484560303, -92.26905495309174),
  const LatLng(14.925009389052418, -92.26851414114743),
  const LatLng(14.92551547066062, -92.26822240977452),
  const LatLng(14.925936922658316, -92.267950698706),
  const LatLng(14.926713350217204, -92.26793875648816),
  const LatLng(14.926922704953792, -92.26785174889032),
  const LatLng(14.927483181153539, -92.26736041184122),
  const LatLng(14.9281625607411, -92.26742809719805),
  const LatLng(14.929072504354137, -92.26702547379016),
  const LatLng(14.92988518625429, -92.26704935824216),
  const LatLng(14.930219819091327, -92.2669299360498),
  const LatLng(14.931278112581284, -92.26608886256963),
  const LatLng(14.931952318654375, -92.26575106835817),
  const LatLng(14.932277057750447, -92.26548151541029),
  const LatLng(14.93320295187666, -92.26503917539553),
  const LatLng(14.933618351647272, -92.265093768401),
  const LatLng(14.934175492410201, -92.26531041739037),
  const LatLng(14.935466190388816, -92.26510739965187),
  const LatLng(14.935510697085215, -92.26552025924364),
  const LatLng(14.935642568698578, -92.26592970678456),
  const LatLng(14.935741472355463, -92.26601500835558),
  const LatLng(14.935879937408318, -92.26641421969113),
  const LatLng(14.937973064600957, -92.26537543552249),
  const LatLng(14.941449051879557, -92.26378408247332),
  const LatLng(14.941792084290817, -92.26507062215528),
  const LatLng(14.941945156298697, -92.26593004421926),
  const LatLng(14.942151746778316, -92.26680781177792), // BASE DE REGRESO
];

const PolylineId polylineRuta30REGRESO = PolylineId("Ruta 30");
final Polyline polylineRuta30 = Polyline(
  polylineId: polylineRuta30REGRESO,
  color: Colors.deepPurple.shade300, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerRegresoRUTA30'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 30"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerIdaRUTA30'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 30"));

Set<Polyline> polylineREGRESO30 = {polylineRuta30};

Set<Marker> markerRuta30regreso = {markerIR, markerRR};
