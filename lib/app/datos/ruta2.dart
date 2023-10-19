import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.871950910080855, -92.25113979291167), //BASE DE IDA
  const LatLng(14.872733904496886, -92.25157523984468),
  const LatLng(14.872829331752584, -92.25165878489706),
  const LatLng(14.874449477309264, -92.25237716727882),
  const LatLng(14.87449616307426, -92.252866519814),
  const LatLng(14.874534391946503, -92.25318704153652),
  const LatLng(14.874722797979718, -92.25355413342724),
  const LatLng(14.875173014333907, -92.25347058837559),
  const LatLng(14.875082481775982, -92.25241741440169),
  const LatLng(14.876893125773758, -92.25202247415504),
  const LatLng(14.87738248641072, -92.25206298084501),
  const LatLng(14.878268226337722, -92.25202247415258),
  const LatLng(14.879220025677812, -92.25139208876509),
  const LatLng(14.879555234214468, -92.25126803702176),
  const LatLng(14.87961640360076, -92.25128069536201),
  const LatLng(14.881463710847877, -92.24964270602224),
  const LatLng(14.881735300386119, -92.24962751601203),
  const LatLng(14.884271349853032, -92.2507987517811),
  const LatLng(14.884121779351899, -92.25172008252756),
  const LatLng(14.884217201561913, -92.25175552588234),
  const LatLng(14.885291292425524, -92.25323071110144),
  const LatLng(14.888255315020771, -92.2518136344135),
  const LatLng(14.888470622492408, -92.25164907597721),
  const LatLng(14.890085421653433, -92.25096299388841),
  const LatLng(14.890332533785463, -92.25094274054281),
  const LatLng(14.89114130718213, -92.25122990493745),
  const LatLng(14.891241619570422, -92.25124256327842),
  const LatLng(14.891266085999497, -92.25145016007073),
  const LatLng(14.891058121261027, -92.25163497185312),
  const LatLng(14.890837923083941, -92.25205016544331),
  const LatLng(14.890705804066656, -92.2525033340577),
  const LatLng(14.890681272159643, -92.25311623935467),
  const LatLng(14.894004349791816, -92.26064238682095),
  const LatLng(14.894006796403477, -92.2607639068945),
  const LatLng(14.895526502132816, -92.2644382619617),
  const LatLng(14.904476367969265, -92.26043529216662),
  const LatLng(14.906465679368955, -92.26343110640805),
  const LatLng(14.908007717094941, -92.26588430055048),
  const LatLng(14.908380514125604, -92.26645473140746),
  const LatLng(14.908715075014932, -92.26691964906921),
  const LatLng(14.911206740700983, -92.26534684253919),
  const LatLng(14.911777079565029, -92.26623381311722),
  const LatLng(14.910895251721378, -92.26681775015547),
];

const PolylineId polylineRuta2IDA = PolylineId("Ruta 2");
final Polyline polylineRuta2 = Polyline(
  polylineId: polylineRuta2IDA,
  color: Colors.deepPurpleAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = Marker(
    markerId: const MarkerId('markerIDARUTA2'),
    position: const LatLng(14.871950910080855, -92.25113979291167),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 2"));

List<LatLng> ruta2 = [
  const LatLng(14.910895251721378, -92.26681775015547),
  const LatLng(14.909755888615871, -92.26733410606536),
  const LatLng(14.90912382334063, -92.26768591568295),
  const LatLng(14.908712190865186, -92.26692364522748),
  const LatLng(14.90853083688077, -92.2666554076807),
  const LatLng(14.908373296930941, -92.26644309245),
  const LatLng(14.908022127664072, -92.26587873994765),
  const LatLng(14.907824309008328, -92.26551768364423),
  const LatLng(14.907631725194454, -92.26521119819691),
  const LatLng(14.907030449071739, -92.26430920588399),
  const LatLng(14.906455125747584, -92.26341616639489),
  const LatLng(14.905877638001352, -92.26252312688108),
  const LatLng(14.90528500852115, -92.26165694571209),
  const LatLng(14.903502717947887, -92.2626108288234),
  const LatLng(14.902702442646598, -92.26308756418612),
  const LatLng(14.90187620934887, -92.26365830370851),
  const LatLng(14.900535195667576, -92.2645714869796),
  const LatLng(14.898884294890651, -92.26566279492263),
  const LatLng(14.898233246374785, -92.26607909905997),
  const LatLng(14.897660062504793, -92.26647302124297),
  const LatLng(14.897541099624691, -92.26652897609468),
  const LatLng(14.89710850677221, -92.26549940676425),
  const LatLng(14.896712683545733, -92.26575232270159),
  const LatLng(14.896608860942795, -92.26574560811939),
  const LatLng(14.896152473478148, -92.26541435536953),
  const LatLng(14.895851819601127, -92.26507414983332),
  const LatLng(14.895711225916429, -92.26483242483984),
  const LatLng(14.895128121216471, -92.26349943291936),
  const LatLng(14.895128121216471, -92.26344795445578),
  const LatLng(14.894013482302395, -92.26075208543473),
  const LatLng(14.893935614379151, -92.26072298891187),
  const LatLng(14.89349717279998, -92.25959097023588),
  const LatLng(14.892642358391573, -92.25766973820477),
  const LatLng(14.892503084958099, -92.25720239602119),
  const LatLng(14.89128580476754, -92.25467150624098),
  const LatLng(14.891150509729849, -92.25467768256829),
  const LatLng(14.891084851805354, -92.25469003522889),
  const LatLng(14.889490917516575, -92.25539478942076),
  const LatLng(14.888790543494064, -92.25375881909217),
  const LatLng(14.888397593370884, -92.25396211949109),
  const LatLng(14.888342118003132, -92.25397647010733),
  const LatLng(14.888053183557101, -92.254136718649),
  const LatLng(14.887546969479, -92.25320632031314),
  const LatLng(14.887163263040287, -92.25233571620551),
  const LatLng(14.886751818026697, -92.25152012279347),
  const LatLng(14.88641434007073, -92.25068539522033),
  const LatLng(14.885093180654438, -92.25128835095057),
  const LatLng(14.884741831024433, -92.25056842831084),
  const LatLng(14.884517614180682, -92.2506999756244),
  const LatLng(14.884452891751849, -92.2507191097794),
  const LatLng(14.884281839524961, -92.25079325462993),
  const LatLng(14.883059702325504, -92.25019969780828),
  const LatLng(14.88174050212039, -92.24963108813785),
  const LatLng(14.881622613306211, -92.24963108813785),
  const LatLng(14.881463116572647, -92.24964065521533),
  const LatLng(14.880745576712815, -92.25029945099982),
  const LatLng(14.880438139609078, -92.2505721127462),
  const LatLng(14.879881053232985, -92.25106481726147),
  const LatLng(14.879636027237892, -92.2512513752725),
  const LatLng(14.879585172751195, -92.2513374789699),
  const LatLng(14.879464971189492, -92.25139488143485),
  const LatLng(14.879208386862484, -92.25146185097726),
  const LatLng(14.878391431688573, -92.25203335030024),
  const LatLng(14.878224997817869, -92.25210749515078),
  const LatLng(14.877377938440917, -92.25215775973032),
  const LatLng(14.876961851557395, -92.25213145026153),
  const LatLng(14.87682546735216, -92.25214819264713),
  const LatLng(14.8758152949598, -92.25240989425919),
  const LatLng(14.87513568105354, -92.25249121441698),
  const LatLng(14.875075579041157, -92.25258210165313),
  const LatLng(14.875107166266494, -92.2529446493277),
  const LatLng(14.875178826345785, -92.2534636632815),
  const LatLng(14.87470725635468, -92.25356650936452),
  const LatLng(14.874607856656208, -92.25333689946467),
  const LatLng(14.874496898810309, -92.25286093735959),
  const LatLng(14.874499210432681, -92.25257153326552),
  const LatLng(14.874452977980527, -92.2523849752545),
  const LatLng(14.872797849637788, -92.25164591843443),
  const LatLng(14.872737746974078, -92.25158851596952),
  const LatLng(14.871958722458885, -92.25113168798184),
];

const PolylineId polylineRuta2Regreso = PolylineId("Ruta 2");
final Polyline polylineRuta2Re = Polyline(
  polylineId: polylineRuta2Regreso,
  color: Colors.deepPurpleAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);

Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA2'),
    position: const LatLng(14.910895251721378, -92.26681775015547),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 2"));

Set<Polyline> polylineIDA2 = {polylineRuta2};
Set<Polyline> polylineREGRESO2 = {polylineRuta2Re};

Set<Marker> markerRuta2 = {markerIR, markerRR};
