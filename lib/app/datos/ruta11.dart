import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.91380504527542, -92.26477509310585),
  const LatLng(14.913456555094324, -92.26499401481156),
  const LatLng(14.912901862563704, -92.26540309189188),
  const LatLng(14.912563945701507, -92.26507978893711),
  const LatLng(14.91228978636555, -92.26469050590906),
  const LatLng(14.912041129921528, -92.26413627244538),
  const LatLng(14.913386421613113, -92.26339069647642),
  const LatLng(14.914132385418348, -92.26295522732637),
  const LatLng(14.913705209880574, -92.26232181765361),
  const LatLng(14.913042129750329, -92.26152345738431),
  const LatLng(14.912417302375871, -92.2607184992585),
  const LatLng(14.912238779930794, -92.26018406002379),
  const LatLng(14.912219652531451, -92.26018405979964),
  const LatLng(14.914151512692364, -92.25909538675351),
  const LatLng(14.914151512692364, -92.25905579864896),
  const LatLng(14.915171629857218, -92.25853455527242),
  const LatLng(14.915796449264576, -92.25821785033112),
  const LatLng(14.916650791185914, -92.2577295970417),
  const LatLng(14.91757526185006, -92.25724794173219),
  const LatLng(14.91849667899799, -92.25669803657922),
  const LatLng(14.918488548972748, -92.25670645020158),
  const LatLng(14.91788692624887, -92.25484703952242),
  const LatLng(14.917555626527571, -92.253835301376),
  const LatLng(14.920392457927942, -92.25230179747511),
  const LatLng(14.920549851421203, -92.25228509129053),
  const LatLng(14.920840423735429, -92.25194261445777),
  const LatLng(14.921058352702927, -92.25142472273542),
  const LatLng(14.921320674322201, -92.25066876782722),
  const LatLng(14.92148210285332, -92.25043488119496),
  const LatLng(14.92146999571812, -92.25044323428726),
  const LatLng(14.921639495548948, -92.25028870207979),
  const LatLng(14.921623352713674, -92.25007569822624),
  const LatLng(14.92158703132988, -92.24986687091884),
  const LatLng(14.921336817185871, -92.24920280008132),
  const LatLng(14.921332781471484, -92.24893967767397),
  const LatLng(14.92136103147847, -92.24881438116309),
  const LatLng(14.921494209995734, -92.24867237859408),
  const LatLng(14.92165967411295, -92.24852202284004),
  const LatLng(14.92165967411295, -92.24853037593232),
  const LatLng(14.92198253053362, -92.24837584372486),
  const LatLng(14.922414350238386, -92.24834660790181),
  const LatLng(14.922461553249269, -92.24831331560324),
  const LatLng(14.922378922171655, -92.24835607312002),
  const LatLng(14.923480667261819, -92.24805677050257),
  const LatLng(14.923645928538345, -92.24794275045781),
  const LatLng(14.923618385001086, -92.2479570029634),
  const LatLng(14.923795751715494, -92.24756618479937),
  const LatLng(14.923752164084844, -92.24757520663782),
  const LatLng(14.92389164447179, -92.24736770435331),
  const LatLng(14.923917797034274, -92.24708802736117),
  const LatLng(14.923900362001499, -92.24709704915203),
  const LatLng(14.923978819676197, -92.24716020202122),
  const LatLng(14.923943949602087, -92.24716020202122),
  const LatLng(14.923917797042797, -92.24683541583681),
  const LatLng(14.924004972228069, -92.24658280436002),
  const LatLng(14.924153169961933, -92.24629410552942),
  const LatLng(14.924135734939716, -92.24633019288325),
  const LatLng(14.92443213012496, -92.24600540669884),
  const LatLng(14.924388542644495, -92.24599638473842),
  const LatLng(14.925024919290573, -92.2452746376619),
  const LatLng(14.924990049386137, -92.24523855030809),
  const LatLng(14.925879230181922, -92.24392136189346),
  const LatLng(14.925870512778623, -92.24394842723315),
  const LatLng(14.926567906935613, -92.24334396405658),
  const LatLng(14.926524319867083, -92.24333494221811),
  const LatLng(14.927300168365052, -92.2429650468414),
  const LatLng(14.927256581458971, -92.24291993759083),
  const LatLng(14.928076014076208, -92.24258612956795),
  const LatLng(14.928546750549737, -92.24242373647574),
  // BASE DE REGRESO
];

const PolylineId polylineRuta11IDA = PolylineId("Ruta 11");
final Polyline polylineRuta11 = Polyline(
  polylineId: polylineRuta11IDA,
  color: Colors.orangeAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);

const PolylineId polylineRuta11RE = PolylineId("Ruta 11");
final Polyline polylineRuta11REGRESO = Polyline(
  polylineId: polylineRuta11RE,
  color: Colors.orangeAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);

Marker markerIR = Marker(
    markerId: const MarkerId('markerIdaRUTA11'),
    position: const LatLng(14.91380504527542, -92.26477509310585),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 11"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA11'),
    position: const LatLng(14.928546750549737, -92.24242373647574),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 11"));

Set<Polyline> polylineIDA11 = {polylineRuta11};
Set<Polyline> polyline11REGRESO = {polylineRuta11REGRESO};

Set<Marker> markerRuta11 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.913786926329067, -92.2647867341782),
  const LatLng(14.914739881677429, -92.26414774330915),
  const LatLng(14.915430704524614, -92.26530701962898),
  const LatLng(14.915882488520925, -92.26520303257055),
  const LatLng(14.916403713829585, -92.26500570215303),
  const LatLng(14.916793824730808, -92.26473686856795),
  const LatLng(14.917226355416819, -92.26437446454572),
  const LatLng(14.917273096673041, -92.26427493101136),
  const LatLng(14.916822977957976, -92.26368719335977),
  const LatLng(14.916451960640067, -92.26303189574546),
  const LatLng(14.915815800654203, -92.26194123661723),
  const LatLng(14.915494952945537, -92.26130467959274),
  const LatLng(14.914151512692364, -92.25909538675351),
  const LatLng(14.914151512692364, -92.25905579864896),
  const LatLng(14.915171629857218, -92.25853455527242),
  const LatLng(14.915796449264576, -92.25821785033112),
  const LatLng(14.916650791185914, -92.2577295970417),
  const LatLng(14.91757526185006, -92.25724794173219),
  const LatLng(14.91849667899799, -92.25669803657922),
  const LatLng(14.918488548972748, -92.25670645020158),
  const LatLng(14.91788692624887, -92.25484703952242),
  const LatLng(14.917555626527571, -92.253835301376),
  const LatLng(14.920392457927942, -92.25230179747511),
  const LatLng(14.920549851421203, -92.25228509129053),
  const LatLng(14.920840423735429, -92.25194261445777),
  const LatLng(14.921058352702927, -92.25142472273542),
  const LatLng(14.921320674322201, -92.25066876782722),
  const LatLng(14.92148210285332, -92.25043488119496),
  const LatLng(14.92146999571812, -92.25044323428726),
  const LatLng(14.921639495548948, -92.25028870207979),
  const LatLng(14.921623352713674, -92.25007569822624),
  const LatLng(14.92158703132988, -92.24986687091884),
  const LatLng(14.921336817185871, -92.24920280008132),
  const LatLng(14.921332781471484, -92.24893967767397),
  const LatLng(14.92136103147847, -92.24881438116309),
  const LatLng(14.921494209995734, -92.24867237859408),
  const LatLng(14.92165967411295, -92.24852202284004),
  const LatLng(14.92165967411295, -92.24853037593232),
  const LatLng(14.92198253053362, -92.24837584372486),
  const LatLng(14.922414350238386, -92.24834660790181),
  const LatLng(14.922461553249269, -92.24831331560324),
  const LatLng(14.922378922171655, -92.24835607312002),
  const LatLng(14.923480667261819, -92.24805677050257),
  const LatLng(14.923645928538345, -92.24794275045781),
  const LatLng(14.923618385001086, -92.2479570029634),
  const LatLng(14.923795751715494, -92.24756618479937),
  const LatLng(14.923752164084844, -92.24757520663782),
  const LatLng(14.92389164447179, -92.24736770435331),
  const LatLng(14.923917797034274, -92.24708802736117),
  const LatLng(14.923900362001499, -92.24709704915203),
  const LatLng(14.923978819676197, -92.24716020202122),
  const LatLng(14.923943949602087, -92.24716020202122),
  const LatLng(14.923917797042797, -92.24683541583681),
  const LatLng(14.924004972228069, -92.24658280436002),
  const LatLng(14.924153169961933, -92.24629410552942),
  const LatLng(14.924135734939716, -92.24633019288325),
  const LatLng(14.92443213012496, -92.24600540669884),
  const LatLng(14.924388542644495, -92.24599638473842),
  const LatLng(14.925024919290573, -92.2452746376619),
  const LatLng(14.924990049386137, -92.24523855030809),
  const LatLng(14.925879230181922, -92.24392136189346),
  const LatLng(14.925870512778623, -92.24394842723315),
  const LatLng(14.926567906935613, -92.24334396405658),
  const LatLng(14.926524319867083, -92.24333494221811),
  const LatLng(14.927300168365052, -92.2429650468414),
  const LatLng(14.927256581458971, -92.24291993759083),
  const LatLng(14.928076014076208, -92.24258612956795),
  const LatLng(14.928546750549737, -92.24242373647574),
];