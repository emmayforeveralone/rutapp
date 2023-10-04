import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.877731055060899, -92.2560711616958), // BASE DE IDA
  const LatLng(14.87816368617618, -92.2558637697007),
  const LatLng(14.877824328813224, -92.25478779532467),
  const LatLng(14.879013069531792, -92.25434015708704),
  const LatLng(14.879787037427826, -92.25399724158478),
  const LatLng(14.880420975473445, -92.25462882130688),
  const LatLng(14.8808082221983, -92.25522579192301),
  const LatLng(14.881267970236195, -92.25618727350185),
  const LatLng(14.882214467034093, -92.25564036629076),
  const LatLng(14.88253975457841, -92.25634941846522),
  const LatLng(14.883448655571234, -92.25594900814635),
  const LatLng(14.883041833553339, -92.25501061065194),
  const LatLng(14.884460746059714, -92.25437200749373),
  const LatLng(14.8835883922277, -92.25227337282908),
  const LatLng(14.883875009583566, -92.25209680376483),
  const LatLng(14.884111924224166, -92.25171452315514),
  const LatLng(14.884216299125235, -92.25175395119253),
  const LatLng(14.8848060991901, -92.25248251291816),
  const LatLng(14.885303613968773, -92.25323469381472),
  const LatLng(14.8860929640451, -92.25415676156868),
  const LatLng(14.886465727883381, -92.25491103727113),
  const LatLng(14.886493892238247, -92.25529331791813),
  const LatLng(14.886583355449506, -92.25566531294213),
  const LatLng(14.88763206035412, -92.2585127036611),
  const LatLng(14.889096726958648, -92.26251165344642),
  const LatLng(14.898734316703461, -92.25841961162712),
  const LatLng(14.89963158198537, -92.25800090393756),
  const LatLng(14.901070563433477, -92.25690684887509),
  const LatLng(14.902216950271509, -92.25806283486125),
  const LatLng(14.905287095018949, -92.25658515010805),
  const LatLng(14.906204285398047, -92.25607080215372),
  const LatLng(14.906701637690345, -92.25705423856209),
  const LatLng(14.908368493775987, -92.25615910262769),
  const LatLng(14.910435414224592, -92.26063409689074),
  const LatLng(14.910869284810826, -92.26169405146717),
  const LatLng(14.911294916500626, -92.26261760443606),
  const LatLng(14.911289424484304, -92.26271422227634),
  const LatLng(14.91171505534482, -92.2635212654844),
  const LatLng(14.911995147446662, -92.26417485676639),
  const LatLng(14.911997893456151, -92.2641720151647),
  const LatLng(14.912887136290882, -92.26541001420776),
  const LatLng(14.912400352388309, -92.26579376960034),
  const LatLng(14.911823818729248, -92.2661809116743),
  const LatLng(14.911207608799426, -92.26663964071118),
  const LatLng(14.9097965402954, -92.26730076516348),
  const LatLng(14.909488985023472, -92.2674769506369), // BASE DE REGREZO
];

const PolylineId polylineRuta5IDA = PolylineId("Ruta 5");
final Polyline polylineRuta4 = Polyline(
  polylineId: polylineRuta5IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA5'),
    position: LatLng(14.877731055060899, -92.2560711616958),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 5"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA5'),
    position: const LatLng(14.909488985023472, -92.2674769506369),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 5"));

Set<Polyline> polylineIDA5 = {polylineRuta4};

Set<Marker> markerRuta5 = {markerIR, markerRR};
