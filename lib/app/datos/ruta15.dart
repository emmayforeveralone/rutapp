import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.916379743036957, -92.26311899998699),
  const LatLng(14.916239784420737, -92.26309351899782),
  const LatLng(14.915690316386408, -92.26279914656298),
  const LatLng(14.91534041855659, -92.26271264531913),
  const LatLng(14.915033933507663, -92.26267308273275),
  const LatLng(14.914814922783991, -92.26271130421262),
  const LatLng(14.914689218305327, -92.2627133158692),
  const LatLng(14.914128082972416, -92.26294465639229),
  const LatLng(14.913457440095303, -92.26335905768572),
  const LatLng(14.91274856506138, -92.26374261356801),
  const LatLng(14.912496505644848, -92.2631223527487),
  const LatLng(14.913071252524917, -92.2627381263043),
  const LatLng(14.91371403413835, -92.26237468698743),
  const LatLng(14.914153998934172, -92.26207583621408),
  const LatLng(14.914565131673996, -92.26180195324274),
  const LatLng(14.915487264592803, -92.26128519291319),
  const LatLng(14.914410332794613, -92.2594834218842),
  const LatLng(14.913652981859062, -92.25827592526106),
  const LatLng(14.912343008116906, -92.255261489998),
  const LatLng(14.910572235598785, -92.25616930835506),
  const LatLng(14.909313843963654, -92.25684454188335),
  const LatLng(14.90882946110687, -92.25713737271357),
  const LatLng(14.907968888164621, -92.2575438908438),
  const LatLng(14.907163242296365, -92.25797107939069),
  const LatLng(14.906362587114243, -92.25841204820432),
  const LatLng(14.905373832115506, -92.25890297051096),
  const LatLng(14.903368010461417, -92.25980041097024),
  const LatLng(14.902003042298295, -92.26039985295463),
  const LatLng(14.898960130914428, -92.26182094385906),
  const LatLng(14.899235647064174, -92.26246767180432),
  const LatLng(14.89943540160633, -92.26273294208582),
  const LatLng(14.900022202161795, -92.26367803552883),
  const LatLng(14.900560027373613, -92.26456012274858),
  const LatLng(14.901142234706247, -92.26550975111921),
  const LatLng(14.902065483834896, -92.26697526112021),
  const LatLng(14.902484513694633, -92.2676547249341),
  const LatLng(14.90304988409849, -92.26855694156049),
  const LatLng(14.903619030892854, -92.26950251747421),
  const LatLng(14.904025003948483, -92.27005095151513),
  const LatLng(14.90437223431131, -92.27057777235613),
  const LatLng(14.904650279276165, -92.27100057986242),
  const LatLng(14.904881330451555, -92.27127479688457),
  const LatLng(14.905017089215747, -92.27135719706361),
  const LatLng(14.905128045838243, -92.27138961681331),
  const LatLng(14.905274247413164, -92.27139231845851),
  const LatLng(14.905510519397309, -92.27132747896957),
  const LatLng(14.907016154960068, -92.2706524237602),
  const LatLng(14.908912434495535, -92.26984431449745),
  const LatLng(14.910220173284895, -92.26933982805382),
  const LatLng(14.91089497115652, -92.26923907389578),
  const LatLng(14.912259856262851, -92.26905874436487),
  const LatLng(14.912695835511814, -92.2689803966438),
  const LatLng(14.913253208892115, -92.2689115046863),
  const LatLng(14.913777017746552, -92.26883939161279),
  const LatLng(14.91441531788853, -92.26879751610657),
  const LatLng(14.914786027127542, -92.2686948535793),
  const LatLng(14.915227222494655, -92.26847331865838),
  const LatLng(14.914942664641277, -92.26782492374659),
  const LatLng(14.917396640818879, -92.26781954453324),
  const LatLng(14.91769163778782, -92.26777091491938),
  const LatLng(14.91828815698583, -92.26755478328131),
  const LatLng(14.919249889048029, -92.26715747377352),
  const LatLng(14.919307321623029, -92.26706561783622),
  const LatLng(14.919484840394194, -92.26697916518935),
  const LatLng(14.919540967627073, -92.26680490903344),
  const LatLng(14.919559241605135, -92.26659418070669),
  const LatLng(14.91943785014522, -92.26632266532773),
  const LatLng(14.919282521194518, -92.26608492054886),
  const LatLng(14.919025379734794, -92.2657809854231),
  const LatLng(14.91884133414219, -92.26560402766152),
  const LatLng(14.917985063194985, -92.26498940331933),
  const LatLng(14.91769528781022, -92.26476651758914),
  const LatLng(14.917487745740624, -92.26455849090762),
  const LatLng(14.91727367696691, -92.26428157220708),
  const LatLng(14.917213633252176, -92.26436667403134),
  const LatLng(14.916949962828172, -92.26403572249257),
  const LatLng(14.916712398104561, -92.26369801680164),
  const LatLng(14.916562288389983, -92.26344271130668),
  const LatLng(14.916379545992944, -92.26312256634874),
// BASE DE REGRESO
];

const PolylineId polylineRuta15IDA = PolylineId("Ruta 15");
final Polyline polylineRuta15 = Polyline(
  polylineId: polylineRuta15IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);

Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA15'),
    position: LatLng(14.950402428008362, -92.25401951577824),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 15"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA15'),
    position: const LatLng(14.911487636284026, -92.26444684386084),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 15"));

Set<Polyline> polylineIDA15 = {polylineRuta15};

Set<Marker> markerRuta15 = {markerIR, markerRR};
