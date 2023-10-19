import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.950402428008362, -92.25401951577824), //BASE DE IDA
  const LatLng(14.945879961312185, -92.25331556411167),
  const LatLng(14.944427741583572, -92.2531341102768),
  const LatLng(14.938761526476158, -92.25403940482467),
  const LatLng(14.938699329131593, -92.25404745145231),
  const LatLng(14.938626765546942, -92.2541413287637),
  const LatLng(14.938561976611373, -92.25412791771922),
  const LatLng(14.93664129527528, -92.25450060810334),
  const LatLng(14.92562431082926, -92.258286704012),
  const LatLng(14.9196672427712, -92.26035301643651),
  const LatLng(14.917722098786514, -92.26101572593342),
  const LatLng(14.915856590853807, -92.26199754548063),
  const LatLng(14.915692522440713, -92.26204309874),
  const LatLng(14.9147329299112, -92.26265832725824),
  const LatLng(14.914688778510707, -92.26271053899927),
  const LatLng(14.9141203630332, -92.26295492532076),
  const LatLng(14.913386564314221, -92.26339775340792),
  const LatLng(14.912761779162569, -92.26373641851255),
  const LatLng(14.912020360736017, -92.26416267371827),
  const LatLng(14.911487636284026, -92.26444684386084), // BASE DE REGRESO
];

const PolylineId polylineRuta3IDA = PolylineId("Ruta 5 Febrero");
final Polyline polylineRuta3 = Polyline(
  polylineId: polylineRuta3IDA,
  color: Colors.greenAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = Marker(
    markerId: const MarkerId('markerIdaRUTA3'),
    position: const LatLng(14.950402428008362, -92.25401951577824),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow:
        const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 5 Febrero"));

List<LatLng> ruta2 = [
  const LatLng(14.911487636284026, -92.26444684386084), // BASE DE REGRESO
  const LatLng(14.910843088634909, -92.26479703678936),
  const LatLng(14.910406008573723, -92.26506548096076),
  const LatLng(14.91004770712001, -92.26464197395524),
  const LatLng(14.91106614264441, -92.26399974566858),
  const LatLng(14.91175999780267, -92.2635555557888),
  const LatLng(14.912503858053949, -92.2631264597373),
  const LatLng(14.913062272469148, -92.26274048890248),
  const LatLng(14.913708197773309, -92.26236745565616),
  const LatLng(14.914552065010522, -92.26181329643296),
  const LatLng(14.915462304780604, -92.2612759777017),
  const LatLng(14.916347135986241, -92.26071380954296),
  const LatLng(14.916507553342745, -92.26102437538333),
  const LatLng(14.916948043386792, -92.26126438257309),
  const LatLng(14.917708976087916, -92.26091394860622),
  const LatLng(14.921589692137575, -92.25956539437036),
  const LatLng(14.92357442627866, -92.2588923314217),
  const LatLng(14.925556113993508, -92.25819536394027),
  const LatLng(14.928120859513259, -92.25731937585336),
  const LatLng(14.929316542295506, -92.25690241811105),
  const LatLng(14.930673186104423, -92.25642264893857),
  const LatLng(14.93614018884923, -92.25454448857379),
  const LatLng(14.936689805689689, -92.25437646152922),
  const LatLng(14.938549422030267, -92.25402524100085),
  const LatLng(14.938591735627224, -92.25399552384721),
  const LatLng(14.938637071614709, -92.2539939597865),
  const LatLng(14.938689963588017, -92.2540455737902),
  const LatLng(14.943568590341314, -92.25318443859601),
  const LatLng(14.94457914811735, -92.25312117273606),
  const LatLng(14.945651817556431, -92.25325473403859),
  const LatLng(14.950437776945373, -92.25413396893296),
];
const PolylineId polylineRuta3REGRESO = PolylineId("Ruta 5 Febrero");
final Polyline polylineRuta3REGRE = Polyline(
  polylineId: polylineRuta3REGRESO,
  color: Colors.greenAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);

Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA3'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "RUTA REGRESO 5 Febrero"));

Set<Polyline> polylineIDA3 = {polylineRuta3};
Set<Polyline> polylineREGRESO3 = {polylineRuta3REGRE};

Set<Marker> markerRuta3 = {markerIR, markerRR};
