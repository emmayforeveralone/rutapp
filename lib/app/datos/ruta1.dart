import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// EMMA
final List<LatLng> routeCoordinatesXochimilcoREGRESO = [
  const LatLng(14.944155, -92.256285), //BASE DE IDA
  const LatLng(14.944114, -92.255507),
  const LatLng(14.941294, -92.256028),
  const LatLng(14.941322, -92.256638),
  const LatLng(14.939444, -92.256647),
  const LatLng(14.939555, -92.257193),
  const LatLng(14.937561, -92.257329),
  const LatLng(14.936803, -92.257424),
  const LatLng(14.935443, -92.257528),
  const LatLng(14.934772, -92.257647),
  const LatLng(14.934829, -92.258060),
  const LatLng(14.934988, -92.258554),
  const LatLng(14.934776, -92.259404),
  const LatLng(14.931353, -92.260494),
  const LatLng(14.928302, -92.261417),
  const LatLng(14.925771, -92.262211),
  const LatLng(14.923465, -92.263020),
  const LatLng(14.921635, -92.262937),
  const LatLng(14.917659, -92.263583),
  const LatLng(14.917302, -92.263547),
  const LatLng(14.916755, -92.263278),
  const LatLng(
      14.916259643111685, -92.26310259671287), // Interseccion en el centro
  const LatLng(14.914825, -92.264069),
  const LatLng(14.913462, -92.265027),
  const LatLng(14.91289719816397, -92.26544257614327),
  const LatLng(14.912426466069604, -92.26576856711745), // Cam
  const LatLng(14.911804, -92.264966),
  const LatLng(14.911874, -92.264891), // BASE DE REGRESO
];

const PolylineId polylineRutaXochimilcoRegreso = PolylineId("Ruta Xochimilco");
final Polyline polylineRX = Polyline(
  polylineId: polylineRutaXochimilcoRegreso,
  color: Colors.redAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: routeCoordinatesXochimilcoREGRESO,
);
Marker markerIX = const Marker(
    markerId: MarkerId('marker'),
    position: LatLng(14.944155, -92.256285),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA XOCHIMILCO"));

Marker markerRX = const Marker(
    markerId: MarkerId('marker'),
    position: LatLng(14.911874, -92.264891),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA XOCHIMILCO"));

final List<LatLng> rutaIDA = [
  const LatLng(14.94426545049227, -92.25631656827763),
  const LatLng(14.94416049516319, -92.2562857228753),
  const LatLng(14.944115144075296, -92.25549044791553),
  const LatLng(14.943117900997514, -92.2556780048417),
  const LatLng(14.942115687032816, -92.2558776734243),
  const LatLng(14.941225304073567, -92.25603041508452),
  const LatLng(14.940377547745713, -92.25606976663528),
  const LatLng(14.94047602608926, -92.25663303052737),
  const LatLng(14.93944490817897, -92.25664099445073),
  const LatLng(14.93952730464172, -92.25721734780424),
  const LatLng(14.938516821508188, -92.25724608180057),
  const LatLng(14.938379468871242, -92.25725681063615),
  const LatLng(14.937517168021976, -92.25737139436978),
  const LatLng(14.93722561614533, -92.25737944099697),
  const LatLng(14.936359583141652, -92.25744743696661),
  const LatLng(14.935915020559937, -92.2574954554518),
  const LatLng(14.935388860261579, -92.25755174224821),
  const LatLng(14.935031219694139, -92.25760136311473),
  const LatLng(14.934700790386804, -92.25763489072592),
  const LatLng(14.933800117733703, -92.2579016478421),
  const LatLng(14.932799608394843, -92.25816787438134),
  const LatLng(14.931800484355737, -92.25846842698186),
  const LatLng(14.930780959573251, -92.25876339908082),
  const LatLng(14.929802754161605, -92.25910092103385),
  const LatLng(14.928803623431133, -92.25937644955091),
  const LatLng(14.929143060265464, -92.26054518366486),
  const LatLng(14.933143096097622, -92.25934132472571),
  const LatLng(14.93416487596616, -92.25903672702552),
  const LatLng(14.93432425997897, -92.25957048662526),
  const LatLng(14.93330279525021, -92.25990916176823),
  const LatLng(14.931319444121307, -92.26050407396622),
  const LatLng(14.927302186957208, -92.26172004504787),
  const LatLng(14.924478548951434, -92.26265627627826),
  const LatLng(14.923565929942537, -92.26302510207073),
  const LatLng(14.923184944011307, -92.2631002039199),
  const LatLng(14.923015184756412, -92.26311495606889),
  const LatLng(14.922871342842324, -92.26311629717334),
  const LatLng(14.922351404008925, -92.2630290569334),
  const LatLng(14.922013052251662, -92.26300695806216),
  const LatLng(14.921604850063854, -92.26293319731353),
  const LatLng(14.920628195561854, -92.26303356519347),
  const LatLng(14.920072259290757, -92.26312207809053),
  const LatLng(14.91927836262852, -92.26325912328306),
  const LatLng(14.917993839384973, -92.26353201441722),
  const LatLng(14.917721699592743, -92.26357895307285),
  const LatLng(14.917440488110879, -92.26358699969805),
  const LatLng(14.917170939436563, -92.26347434692391),
  const LatLng(14.916725146650354, -92.26326245241971),
  const LatLng(14.916451709339393, -92.26315248185122),
  const LatLng(14.916385617805986, -92.26312163644893),
  const LatLng(14.916244363284173, -92.2630934732555),
  const LatLng(14.915851701131214, -92.26334291868875),
  const LatLng(14.914015210976256, -92.26464099361483),
  const LatLng(14.913434881751146, -92.26499494001041),
  const LatLng(14.912382386428838, -92.2658000405594),
  const LatLng(14.911793909977563, -92.26497339341377),
  const LatLng(14.911901472993923, -92.2649076792958),
];
const PolylineId polylineRutaXochimilcoIda =
    PolylineId("Ruta Xochimilco Regreso");
final Polyline polylineR = Polyline(
  polylineId: polylineRutaXochimilcoIda,
  color: Colors.redAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: rutaIDA,
);

Set<Polyline> polylineIdaXochi = {polylineRX};
Set<Polyline> polylineRegreXochi = {polylineR};

Set<Marker> markerXochi = {markerIX, markerRX};
