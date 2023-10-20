// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// List<LatLng> ruta = [
//   const LatLng(14.891618794122662, -92.30158639203296),
//   const LatLng(14.890473166929253, -92.30053426695841),
//   const LatLng(14.891009573561673, -92.2999740088296),
//   const LatLng(14.88890412667112, -92.29792775045172),
//   const LatLng(14.88875050650193, -92.29775055252776),
//   const LatLng(14.889551703011406, -92.29670383041658),
//   const LatLng(14.891324644324728, -92.29465236030889),
//   const LatLng(14.891833763286929, -92.29361732856977),
//   const LatLng(14.892630382313508, -92.29210816551317),
//   const LatLng(14.893091068721672, -92.29065694437492),
//   const LatLng(14.894194371248155, -92.28808414563605),
//   const LatLng(14.895736677985724, -92.28603577442514),
//   const LatLng(14.896111022613278, -92.28520217102076),
//   const LatLng(14.896698854529001, -92.28378897391939),
//   const LatLng(14.89750047024281, -92.28218449654244),
//   const LatLng(14.898416927574383, -92.28007833762288),
//   const LatLng(14.899010018528314, -92.27862771758923),
//   const LatLng(14.900015406198941, -92.27434188077659),
//   const LatLng(14.9003929223811, -92.27363770486227),
//   const LatLng(14.899377743348548, -92.2734209482909),
//   const LatLng(14.898479542925052, -92.27185680425349),
//   const LatLng(14.900803512151779, -92.27042143585655),
//   const LatLng(14.902355681706606, -92.26946166775096),
//   const LatLng(14.902683901676934, -92.27009713064712),
//   const LatLng(14.904008874496395, -92.27003781863569),
//   const LatLng(14.905014417217014, -92.26936822534311),
//   const LatLng(14.90876839325569, -92.26692857415362),
//   const LatLng(14.910677174004427, -92.2657345593468),
//   const LatLng(14.911261200564953, -92.26680696152559),
//   const LatLng(14.91188439787922, -92.26814838556245),
//   const LatLng(14.911852445329432, -92.26812153922508),
//   const LatLng(14.90978788006252, -92.26835595785039),
// ];

// const PolylineId polylineRuta40regr = PolylineId("Ruta 40 Regreso");
// final Polyline polylineRuta40R = Polyline(
//   polylineId: polylineRuta40regr,
//   color: const Color.fromARGB(255, 15, 108, 12), // Color de la línea de la ruta
//   width: 5, // Ancho de la línea de la ruta
//   points: ruta,
// );
// Marker markerIR = const Marker(
//     markerId: MarkerId('markerIdaRUTA40'),
//     position: LatLng(14.891618794122662, -92.30158639203296),
//     infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA REGRESO 40"));
// Marker markerRR = Marker(
//     markerId: const MarkerId('markerRegresoRUTA40R'),
//     position: const LatLng(14.90978788006252, -92.26835595785039),
//     icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
//     infoWindow:
//         const InfoWindow(title: "Ruta 40 Regreso", snippet: "RUTA REGRESO 40"));

// Set<Polyline> polylineregreso40 = {polylineRuta40R};
// Set<Marker> markerRuta40Reg = {markerIR, markerRR};
