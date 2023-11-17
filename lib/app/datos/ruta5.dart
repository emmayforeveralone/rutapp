import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// RUYA DE IDA

List<LatLng> ruta = [
  const LatLng(14.867608436996724, -92.31542570678378), // BASE DE IDA
  const LatLng(14.865424750943196, -92.31284649916228),
  const LatLng(14.866738619982833, -92.31185220220321),
  const LatLng(14.86780249893317, -92.31172030343984),
  const LatLng(14.86780249893317,
      -92.31172030343984), // Repetición para cerrar el triángulo
  const LatLng(14.868246157445284, -92.31098890708394),
  const LatLng(14.870900048043119, -92.30963752274428),
  const LatLng(14.872089230601723, -92.30922199330455),
  const LatLng(14.873951816157, -92.30870192761523),
  const LatLng(14.87555424296525, -92.30823029134275),
  const LatLng(14.876009622599454, -92.30786298864537),
  const LatLng(14.876332606936845, -92.30753482475544),
  const LatLng(14.877659456425636, -92.3062025998014),
  const LatLng(14.878175936205812, -92.30585185582773),
  const LatLng(14.879774956382043, -92.3061850205997),
  const LatLng(14.880969172187118, -92.30641706184028),
  const LatLng(14.881800844051563, -92.30576661555487),
  const LatLng(14.88220957355992, -92.30407736296166),
  const LatLng(14.882453047745274, -92.3025977778858),
  const LatLng(14.882897034680916, -92.30018444208369),
  const LatLng(14.883180370784036, -92.29880791388229),
  const LatLng(14.883275370127295, -92.29745983420295),
  const LatLng(14.883611455771064, -92.2959518224094),
  const LatLng(14.883816428914672, -92.29500211020975),
  const LatLng(14.88414316882823, -92.29321443940235),
  const LatLng(14.884468126333513, -92.29144383667409),
  const LatLng(14.884655799113219, -92.29107502864211),
  const LatLng(14.884831833128713, -92.29090643068093),
  const LatLng(14.884978770497392, -92.29086428119155),
  const LatLng(14.88505713654363, -92.29087336830983),
  const LatLng(14.886808587356661, -92.29121736435694),
  const LatLng(14.887856973172239, -92.28444792027139),
  const LatLng(14.888961371294712, -92.27776976148036),
  const LatLng(14.889317398554708, -92.27720235511694),
  const LatLng(14.889736121679245, -92.27665021995844),
  const LatLng(14.89282969575446, -92.27470404364946),
  const LatLng(14.89461278118982, -92.2735535318759),
  const LatLng(14.899047080667327, -92.27081824262999),
  const LatLng(14.899357397024994, -92.27129280676898),
  const LatLng(14.913724111525928, -92.2623767482352),
  const LatLng(14.91541980799566, -92.26530021758649),
  const LatLng(14.915719116940721, -92.26524338355786),
];

const PolylineId polylineRuta5IDA = PolylineId("Ruta 5");
final Polyline polylineRuta5ida = Polyline(
  polylineId: polylineRuta5IDA,
  color:
      const Color.fromARGB(255, 78, 141, 151), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA5'),
    position: LatLng(14.877731055060899, -92.2560711616958),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 5"));

// RUTA DE REGRESO

List<LatLng> ruta2 = [
  const LatLng(14.90954085568633, -92.26745288592012),
  const LatLng(14.90928335816345, -92.26759586515173),
  const LatLng(14.909123630284816, -92.26769034512847),
  const LatLng(14.908712811718912, -92.26692591558393),
  const LatLng(14.910659333124324, -92.26571892152953),
  const LatLng(14.911208071543824, -92.26534941366151),
  const LatLng(14.91208755064265, -92.26667122287088),
  const LatLng(14.912452559414, -92.26721039582026),
  const LatLng(14.91285878670878, -92.26803187338562),
  const LatLng(14.913243678726857, -92.2689035913024),
  const LatLng(14.912555537965751, -92.26899880973859),
  const LatLng(14.912236737540734, -92.26905647723576),
  const LatLng(14.910307682460784, -92.26931848222046),
  const LatLng(14.910187159146982, -92.26934664541466),
  const LatLng(14.90550558229529, -92.27132056135108),
  const LatLng(14.905399312060863, -92.27134872454396),
  const LatLng(14.905334513111686, -92.27137688773686),
  const LatLng(14.90522694681298, -92.27139298098994),
  const LatLng(14.905106420646437, -92.27137688773618),
  const LatLng(14.90497811853355, -92.27135408896098),
  const LatLng(14.904866664110804, -92.27124814171152),
  const LatLng(14.904712863520018, -92.27107675289606),
  const LatLng(14.904407263827238, -92.27062006790487),
  const LatLng(14.904328208742301, -92.27052082617755),
  const LatLng(14.903609539568835, -92.26950161136904),
  const LatLng(14.901765514453343, -92.27071162725312),
  const LatLng(14.901146590022528, -92.2710828252919),
  const LatLng(14.900703993695847, -92.27140937596859),
  const LatLng(14.900614569190589, -92.27145229131014),
  const LatLng(14.899387809592326, -92.27215455412319),
  const LatLng(14.899304864617935, -92.27222295044879),
  const LatLng(14.898790345859968, -92.27250190016885),
  const LatLng(14.898467191738272, -92.27185532946164),
  const LatLng(14.898201507364437, -92.2714087416631),
  const LatLng(14.898060240905162, -92.27117941279667),
  const LatLng(14.897431856801099, -92.27012893979446),
  const LatLng(14.896721660351535, -92.26905182324921),
  const LatLng(14.895947609550614, -92.26771397563692),
  const LatLng(14.89581958392042, -92.26764019293184),
  const LatLng(14.894095372775167, -92.26670621935965),
  const LatLng(14.894042234848932, -92.26665391628714),
  const LatLng(14.894002057383808, -92.26659356658809),
  const LatLng(14.893974397328176, -92.26612879633281),
  const LatLng(14.893984765708304, -92.26603357791876),
  const LatLng(14.893992541993093, -92.26593835950469),
  const LatLng(14.893961436852294, -92.26580424906236),
  const LatLng(14.893877395508046, -92.26560974352189),
  const LatLng(14.893725757820905, -92.2652127765949),
  const LatLng(14.892505757299126, -92.26577485891913),
  const LatLng(14.892420217560758, -92.2658258208872),
  const LatLng(14.890305523062114, -92.26677186937279),
  const LatLng(14.89017850820196, -92.26681880802761),
  const LatLng(14.890156475001525, -92.26636149138496),
  const LatLng(14.8901162968106, -92.26595111341621),
  const LatLng(14.889980209335661, -92.26493321509881),
  const LatLng(14.889892076450455, -92.26489968748821),
  const LatLng(14.889810423892294, -92.26475753041935),
  const LatLng(14.889841529632388, -92.26467974636279),
  const LatLng(14.889893372522556, -92.26461939666373),
  const LatLng(14.889628839778094, -92.26403494977033),
  const LatLng(14.889586069342093, -92.26393436693857),
  const LatLng(14.889080374719024, -92.26246897216886),
  const LatLng(14.888755161083495, -92.26160342650788),
  const LatLng(14.888705910077984, -92.26142371851515),
  const LatLng(14.888555424183265, -92.26101461758766),
  const LatLng(14.887814663423656, -92.25909056947114),
  const LatLng(14.887698015778055, -92.25874724673876),
  const LatLng(14.887607289787836, -92.2584562270789),
  const LatLng(14.886874110938507, -92.25641878307523),
  const LatLng(14.886576945472296, -92.25565985720483),
  const LatLng(14.886517325230058, -92.25539565963344),
  const LatLng(14.886484922917562, -92.25525752587782),
  const LatLng(14.88647714636128, -92.25505636018774),
  const LatLng(14.88646548152717, -92.25490079207462),
  const LatLng(14.886085726018823, -92.25414172691644),
  const LatLng(14.885289922210138, -92.25322307034072),
  const LatLng(14.885048847508923, -92.25283280892255),
  const LatLng(14.884798920746949, -92.25247476971475),
  const LatLng(14.884471006499536, -92.25208987272093),
  const LatLng(14.884224746458983, -92.25175325548746),
  const LatLng(14.884122507382697, -92.25171726210499),
  const LatLng(14.883902169113806, -92.25206863146073),
  const LatLng(14.883824402612204, -92.25214105109895),
  const LatLng(14.883585701798314, -92.2522746319391),
  const LatLng(14.884457800500405, -92.25436503022318),
  const LatLng(14.884202181283923, -92.25451356378862),
  const LatLng(14.883872268346867, -92.25465427977578),
  const LatLng(14.883616648432596, -92.25477414896179),
  const LatLng(14.883044965364416, -92.25501779608622),
  const LatLng(14.883446654725683, -92.25595459978936),
  const LatLng(14.882532464049737, -92.25635720388702),
  const LatLng(14.882292946439739, -92.2557949592142),
  const LatLng(14.882208578693152, -92.25563860812049),
  const LatLng(14.881271891327692, -92.25618490833266),
  const LatLng(14.880722555570953, -92.25509062678687),
  const LatLng(14.880628113369974, -92.25493688152717),
  const LatLng(14.88045685807981, -92.25468411392566),
  const LatLng(14.88041152577435, -92.25461505885927),
  const LatLng(14.880094926051198, -92.25428333024828),
  const LatLng(14.879792709989033, -92.25400580704279),
  const LatLng(14.877829554507755, -92.25479016840463),
  const LatLng(14.878106687331817, -92.25561490056421),
  const LatLng(14.878172168025385, -92.25586636523994),
  const LatLng(14.877754013203491, -92.2560649118213),
];

const PolylineId polylineRuta5REGRESO = PolylineId("Ruta 5 REGRESO");
final Polyline polylineRuta5regreso = Polyline(
  polylineId: polylineRuta5REGRESO,
  color: Colors.greenAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA5'),
    position: const LatLng(14.909488985023472, -92.2674769506369),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow: const InfoWindow(title: "Ruta 42", snippet: "RUTA REGRESO 42"));

Set<Polyline> polylineIDA5 = {polylineRuta5ida};
Set<Polyline> polylineREGRESO5 = {polylineRuta5regreso};

Set<Marker> markerRuta5 = {markerIR, markerRR};
