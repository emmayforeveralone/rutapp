import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.904918183876894, -92.27640348441359),
  const LatLng(14.906958825550836, -92.27621454126637),
  const LatLng(14.907279200120264, -92.27619590088104),
  const LatLng(14.907339672377962, -92.2756966047986),
  const LatLng(14.907333239160172, -92.27543164503565),
  const LatLng(14.907303646355883, -92.27518399420192),
  const LatLng(14.907490209625728, -92.27511608991965),
  const LatLng(14.907604720790042, -92.27512940448058),
  const LatLng(14.907669954516235, -92.27517801363739),
  const LatLng(14.90770717186344, -92.27525897091023),
  const LatLng(14.90798865312802, -92.27621768632669),
  const LatLng(14.908154659208485, -92.2768889572112),
  const LatLng(14.908330899487733, -92.27744504703676),
  const LatLng(14.908844344837949, -92.27735308585656),
  const LatLng(14.909023594697436, -92.2773381519907),
  const LatLng(14.909188413298446, -92.27738295359141),
  const LatLng(14.909352472235346, -92.27745683692781),
  const LatLng(14.909897777289373, -92.27642261602251),
  const LatLng(14.910408180789483, -92.27551872406592),
  const LatLng(14.910850103108306, -92.27506782297834),
  const LatLng(14.911055857417226, -92.27493434814517),
  const LatLng(14.911377284147422, -92.27471506808669),
  const LatLng(14.911837926706221, -92.27447460154048),
  const LatLng(14.912369199908618, -92.27423837229975),
  const LatLng(14.913840139032995, -92.27357364253614),
  const LatLng(14.914880999704566, -92.27308233520608),
  const LatLng(14.915448388883028, -92.27251513486159),
  const LatLng(14.91615215523677, -92.27178283394218),
  const LatLng(14.916666790969012, -92.27140603183317),
  const LatLng(14.919318432051334, -92.27016511464272),
  const LatLng(14.91973656752127, -92.26983225059014),
  const LatLng(14.920011893201895, -92.26942216206818),
  const LatLng(14.920224339772405, -92.26889103941424),
  const LatLng(14.920245822076227, -92.26868154703409),
  const LatLng(14.920218556074756, -92.26831728675813),
  const LatLng(14.920097098387549, -92.26790514252637),
  const LatLng(14.91960551616534, -92.26666389642135),
  const LatLng(14.919396476108263, -92.2662560275588),
  const LatLng(14.91919569831392, -92.26597470921173),
  const LatLng(14.918989962842536, -92.26572160817013),
  const LatLng(14.918837933295624, -92.26559249245942),
  const LatLng(14.917987799570867, -92.26498288419525),
  const LatLng(14.91763660957434, -92.26471131053043),
  const LatLng(14.917439631908332, -92.26448533442475),
  const LatLng(14.917188225939773, -92.26415944602644),
  const LatLng(14.91679394456678, -92.26364241007005),
  const LatLng(14.916794592521864, -92.26364106896564),
  const LatLng(14.916514675742107, -92.2631676590814),
  const LatLng(14.916383788601625, -92.26312340262648),
  const LatLng(14.916245773859181, -92.26309188666659),
  const LatLng(14.916001494029416, -92.26295375290262),
  const LatLng(14.915652892623697, -92.2627867853933),
  const LatLng(14.915525244753876, -92.26274923446061),
  const LatLng(14.915344695553722, -92.26271148103316),
  const LatLng(14.915028702185456, -92.26267608292989),
  const LatLng(14.914853602569435, -92.2627089525977),
  const LatLng(14.914777861762406, -92.26271738071705),
  const LatLng(14.914680946067232, -92.26270810978578),
  const LatLng(14.914113296105828, -92.26295168245626),
  const LatLng(14.913411264958452, -92.26338320220285),
  const LatLng(14.91200393808222, -92.26415606080745),
  const LatLng(14.912280843403966, -92.26466680488042),
  const LatLng(14.912564263776694, -92.26504522746573),
  const LatLng(14.912890848281087, -92.2654101650633),
  const LatLng(14.913445470708197, -92.26499044469246),
  const LatLng(14.913706085744433, -92.26483031041772),
// BASE DE REGRESO
];

const PolylineId polylineRuta13IDA = PolylineId("Ruta 13");
final Polyline polylineRuta13 = Polyline(
  polylineId: polylineRuta13IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);

const PolylineId polylineRuta13RE = PolylineId("Ruta 13");
final Polyline polylineRuta13REGRESO = Polyline(
  polylineId: polylineRuta13RE,
  color: Color.fromARGB(255, 0, 189, 28), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);

Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA13'),
    position: LatLng(14.904918183876894, -92.27640348441359),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 13"));
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA3'),
    position: const LatLng(14.913706085744433, -92.26483031041772),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 13"));

Set<Polyline> polylineIDA13 = {polylineRuta13};
Set<Polyline> polyline13REGRESO = {polylineRuta13};

Set<Marker> markerRuta13 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.904918183876894, -92.27640348441359),
  const LatLng(14.904892414050735, -92.2758732157285),
  const LatLng(14.907339672377962, -92.2756966047986),
  const LatLng(14.907333239160172, -92.27543164503565),
  const LatLng(14.907303646355883, -92.27518399420192),
  const LatLng(14.907490209625728, -92.27511608991965),
  const LatLng(14.907604720790042, -92.27512940448058),
  const LatLng(14.907669954516235, -92.27517801363739),
  const LatLng(14.90770717186344, -92.27525897091023),
  const LatLng(14.90798865312802, -92.27621768632669),
  const LatLng(14.908154659208485, -92.2768889572112),
  const LatLng(14.908330899487733, -92.27744504703676),
  const LatLng(14.908844344837949, -92.27735308585656),
  const LatLng(14.909023594697436, -92.2773381519907),
  const LatLng(14.909188413298446, -92.27738295359141),
  const LatLng(14.909352472235346, -92.27745683692781),
  const LatLng(14.909897777289373, -92.27642261602251),
  const LatLng(14.910408180789483, -92.27551872406592),
  const LatLng(14.910850103108306, -92.27506782297834),
  const LatLng(14.911055857417226, -92.27493434814517),
  const LatLng(14.911377284147422, -92.27471506808669),
  const LatLng(14.911837926706221, -92.27447460154048),
  const LatLng(14.912369199908618, -92.27423837229975),
  const LatLng(14.913840139032995, -92.27357364253614),
  const LatLng(14.914880999704566, -92.27308233520608),
  const LatLng(14.915448388883028, -92.27251513486159),
  const LatLng(14.91615215523677, -92.27178283394218),
  const LatLng(14.916666790969012, -92.27140603183317),
  const LatLng(14.919318432051334, -92.27016511464272),
  const LatLng(14.91973656752127, -92.26983225059014),
  const LatLng(14.920011893201895, -92.26942216206818),
  const LatLng(14.920224339772405, -92.26889103941424),
  const LatLng(14.920245822076227, -92.26868154703409),
  const LatLng(14.920218556074756, -92.26831728675813),
  const LatLng(14.920097098387549, -92.26790514252637),
  const LatLng(14.91960551616534, -92.26666389642135),
  const LatLng(14.919396476108263, -92.2662560275588),
  const LatLng(14.91919569831392, -92.26597470921173),
  const LatLng(14.918989962842536, -92.26572160817013),
  const LatLng(14.918837933295624, -92.26559249245942),
  const LatLng(14.917987799570867, -92.26498288419525),
  const LatLng(14.91763660957434, -92.26471131053043),
  const LatLng(14.917439631908332, -92.26448533442475),
  const LatLng(14.917275244762742, -92.26427653312696),
  const LatLng(14.917221312543647, -92.26437141556157),
  const LatLng(14.916705134164918, -92.26480870312682),
  const LatLng(14.91642566105637, -92.26498963872893),
  const LatLng(14.915890141813817, -92.26520558541507),
  const LatLng(14.915432883499268, -92.26529247788386),
  const LatLng(14.915352883350852, -92.26519294434952),
  const LatLng(14.914731081205941, -92.26415162428034),
  const LatLng(14.914024018306634, -92.26463832815871),
  const LatLng(14.911487636284026, -92.26444684386084),
];
