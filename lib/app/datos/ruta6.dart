import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.900038387213106, -92.24218549585548), //   BASE
  const LatLng(14.900550600453077, -92.24322940420933),
  const LatLng(14.900605565822397, -92.2432758352087),
  const LatLng(14.900707644323802, -92.24328512140882),
  const LatLng(14.901920432000821, -92.24267569829796),
  const LatLng(14.901973153548267, -92.24258980094714),
  const LatLng(14.90198100569253, -92.24252827987155),
  const LatLng(14.901949597113582, -92.24244818639481),
  const LatLng(14.901571700008718, -92.2416424357935),
  const LatLng(14.901330526412467, -92.24176315639498),
  const LatLng(14.901199282995728, -92.24180378352037),
  const LatLng(14.900425725519652, -92.24178450374151),
  const LatLng(14.900239516105039, -92.24179843304167),
  const LatLng(14.899987224657998, -92.2419119620008),
  const LatLng(14.898179415891649, -92.24283975250535),
  const LatLng(14.898181332834001, -92.24287515161419),
  const LatLng(14.898178092778394, -92.24293751297311),
  const LatLng(14.898143748185886, -92.24302870807868),
  const LatLng(14.89807959506303, -92.2430897283348),
  const LatLng(14.897984337361098, -92.24311319766372),
  const LatLng(14.89798044929082, -92.24323523817515),
  const LatLng(14.898016089932595, -92.24324395535436),
  const LatLng(14.898047842499395, -92.2432761418622),
  const LatLng(14.898003550495474, -92.24431179536292),
  const LatLng(14.898004846518658, -92.24489450527155),
  const LatLng(14.897843116825523, -92.24977760247188),
  const LatLng(14.897735652717582, -92.25187711888412),
  const LatLng(14.89759762601647, -92.2518757777802),
  const LatLng(14.89757928794322, -92.25223539582274),
  const LatLng(14.897591600188523, -92.2523641418541),
  const LatLng(14.897692506115277, -92.25278084420084),
  const LatLng(14.897840900949717, -92.25307856940033),
  const LatLng(14.90036049628224, -92.25618379556573),
  const LatLng(14.900558824898516, -92.25633893254732),
  const LatLng(14.900643065398565, -92.25638654175624),
  const LatLng(14.90078951418981, -92.2564911479077),
  const LatLng(14.900823210357165, -92.25653540435597),
  const LatLng(14.902332353213, -92.25748669382321),
  const LatLng(14.902616648281395, -92.25771121040401),
  const LatLng(14.902732639851044, -92.25781715765899),
  const LatLng(14.905273724594997, -92.2565950395779),
  const LatLng(14.906200488939598, -92.2560587769962),
  const LatLng(14.906714492145568, -92.25704601318095),
  const LatLng(14.908375793849222, -92.25615906958022),
  const LatLng(14.908727774725584, -92.25690387125532),
  const LatLng(14.908838525595108, -92.25713407351803),
  const LatLng(14.908949250872503, -92.25743644682325),
  const LatLng(14.909967683975738, -92.25965790890187),
  const LatLng(14.910913756857703, -92.26180585764256),
  const LatLng(14.911289610081718, -92.26263282879698),
  const LatLng(14.911301693698727, -92.26270102114758),
  const LatLng(14.91130363761454, -92.26270638556632),
  const LatLng(14.911750519325064, -92.26355439794989),
  const LatLng(14.912000570206441, -92.2641613402077),
  const LatLng(14.912283826024002, -92.26466305015606),
  const LatLng(14.912970259572832, -92.26419859981709),
  const LatLng(14.912748441956484, -92.26374720546538),
  const LatLng(14.912498269211403, -92.26312093252511),
  const LatLng(14.912010295868336, -92.26223849357997),
  const LatLng(14.91158359786927, -92.26126794259152),
  const LatLng(14.911372103395209, -92.26069727996259),
  const LatLng(14.91120710382529, -92.26038123382429),
  const LatLng(14.91057050298025, -92.2588268005214),
  const LatLng(14.910304392332062, -92.25895969025628),
];

const PolylineId polylineRuta6IDA = PolylineId("Ruta 6");
final Polyline polylineRuta6 = Polyline(
  polylineId: polylineRuta6IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA6'),
    position: LatLng(14.900038387213106, -92.24218549585548),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 6"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA5'),
    position: const LatLng(14.910304392332062, -92.25895969025628),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 6"));

Set<Polyline> polylineIDA6 = {polylineRuta6};

Set<Marker> markerRuta6 = {markerIR, markerRR};
