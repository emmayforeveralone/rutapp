import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// EMMA
final List<LatLng> routeCoordinatesForCACREGRESO = [
  const LatLng(14.913337545057166, -92.2672640228076),
  const LatLng(14.913584744467828, -92.26756856616731),
  const LatLng(14.913728943997492, -92.26793097275896),
  const LatLng(14.914140942100879, -92.26786092778809),
  const LatLng(14.914929621996487, -92.26782438258448),
  const LatLng(14.915803640745967, -92.26783351888639),
  const LatLng(14.917584242313449, -92.26777983611245),

  const LatLng(14.919213660504067, -92.26718735411539),
  const LatLng(14.919742385249874, -92.26683330253661),
  const LatLng(14.919535042367844, -92.26620030120196),
  const LatLng(14.919078887322321, -92.2656531305802),
  const LatLng(14.918363551323255, -92.26512741761668),
  const LatLng(14.917855557644458, -92.26476263718216),
  const LatLng(14.917741518083032, -92.26461243347495),
  const LatLng(14.917326828259567, -92.2640652628532),
  const LatLng(14.917192053894782, -92.26388287264595),
  const LatLng(14.917451235290995, -92.26299237923233),
  const LatLng(14.917461602540333, -92.26294946388947),
  const LatLng(14.917389031784499, -92.26264905648928),
  const LatLng(14.91725425745648, -92.2622735472231),
  const LatLng(14.915885774876733, -92.26198386862568),
  const LatLng(14.914520902773932, -92.25957649889337),
  const LatLng(14.913190207669693, -92.25732661565041),
  const LatLng(14.912741277371849, -92.2562453933168),
  const LatLng(14.911507277457284, -92.25345350450417),
  const LatLng(14.910249074160847, -92.25068665503481),
  const LatLng(14.90969255880237, -92.24947224598955),
  const LatLng(14.908966667078644, -92.24873358484943),
  const LatLng(14.907877824856328, -92.24830791569),
  const LatLng(14.905179892141527, -92.24808256143092),
  const LatLng(14.9020584748898, -92.24784468750367),
  const LatLng(14.901501938356168, -92.24779460877251),
  const LatLng(14.90084861103203, -92.24738145927695),
  const LatLng(14.90000170232176, -92.24594169603773),
  const LatLng(14.89932417294013, -92.24506531836957),
  const LatLng(14.898027462831568, -92.24315639579818),
  const LatLng(14.897964571325167, -92.24313347389864),
  const LatLng(14.89787389361507, -92.24313347389864),
  const LatLng(14.89781344178713, -92.24305304661857),
  const LatLng(14.897800487821778, -92.24293240569848),
  const LatLng(14.897796169833162, -92.24278942386725),

//DESVIO TUCTLA CHICO

  const LatLng(14.897955935354423, -92.24271346476941),
  const LatLng(14.897947299382562, -92.24245431019523),
  const LatLng(14.89803365907571, -92.2421281328782),
  const LatLng(14.897973207292603, -92.24163663283333),

  const LatLng(14.897960253336093, -92.24066703725946),
  const LatLng(14.897886847571197, -92.24046150087025),
  const LatLng(14.897670948120755, -92.24013532356776),
  const LatLng(14.89678575810447, -92.23941594620783),
  const LatLng(14.89669076187506, -92.23930870981476),
  const LatLng(14.896414409005002, -92.23928190072142),
  const LatLng(14.896019864124735, -92.2394249558067),
  const LatLng(14.895177847736674, -92.24021582407202),
  const LatLng(14.894890245641923, -92.24022989475716),
  const LatLng(14.894337534927189, -92.23989924927247),
  const LatLng(14.893514741802642, -92.23938973728508),
  const LatLng(14.892404993788142, -92.23850950535892),
  const LatLng(14.890794337668384, -92.23727628703323),
  const LatLng(14.889830854703911, -92.23613571265521),
  const LatLng(14.889618270663352, -92.2345798261023),
  const LatLng(14.889851594607977, -92.23385016895277),
  const LatLng(14.890152322875222, -92.23311514668298),
  const LatLng(14.891241163090458, -92.2313661155975),
  const LatLng(14.89287441309312, -92.22875329920946),
  const LatLng(14.893885466418007, -92.22708474500303),
  const LatLng(14.896130506324933, -92.22343109417302),
  const LatLng(14.897545958279538, -92.2211455504214),
  const LatLng(14.902328054840048, -92.21331078863439),
  const LatLng(14.904803360769707, -92.20927559033638),
  const LatLng(14.905752945513717, -92.20763303829281),
  const LatLng(14.908817061262807, -92.20278678334564),
  const LatLng(14.90968678048464, -92.20120828892034),
  const LatLng(14.914329683681938, -92.19363428480757),
  const LatLng(14.914971921822977, -92.19227733330159),
  const LatLng(14.914838122381394, -92.1919311722434),
  const LatLng(14.915881755839978, -92.19115577141272),
  const LatLng(14.919429586041355, -92.18531818106028),
  const LatLng(14.921255006099578, -92.18230409225177),
  const LatLng(14.922567658109877, -92.17986310492414),
  const LatLng(14.922914406429706, -92.17868960048062),
  const LatLng(14.923529708317007, -92.17694907036955),
  const LatLng(14.9247910716609, -92.17475218176031),
  const LatLng(14.927063916388986, -92.17096709928585),
  const LatLng(14.929678928070258, -92.16677781029884),
  const LatLng(14.931290905749671, -92.16418267549582),

  ///DESVIO TALISMAN
  const LatLng(14.932210324652344, -92.162773887971),
  const LatLng(14.93279540733684, -92.16218071431591),
  const LatLng(14.933631237011937, -92.1618099807495),
  const LatLng(14.935625274617681, -92.16121680707879),
  const LatLng(14.938096900342734, -92.1605000555586),
  const LatLng(14.941738615867509, -92.15954850612941),
  const LatLng(14.943159465203268, -92.15876996566615),
  const LatLng(14.945929497355722, -92.15701516019683),
  const LatLng(14.951911212032273, -92.15327075137499),

  // BASE DE REGRESO

  const LatLng(14.952514564921676, -92.15318580272965),
  const LatLng(14.957123001665272, -92.15465916134005),
  const LatLng(14.96511191036237, -92.15211761772214),
  const LatLng(14.965236456715084, -92.15204394972899),
  const LatLng(14.976844242701766, -92.1550809327469),
  const LatLng(14.977361019984196, -92.15498238933772),
  const LatLng(14.977932193384072, -92.15446151704133),
  const LatLng(14.978068186853278, -92.15436297362103),
  const LatLng(14.97844896803177, -92.15439112888029),
  const LatLng(14.979347629842989, -92.154537249679),
  const LatLng(14.979850801821629, -92.15510035486426),
  const LatLng(14.983481764588522, -92.15747947430268),
  const LatLng(14.985004846785559, -92.15839452026204),
  const LatLng(14.985752784962745, -92.15871830575064),
  const LatLng(14.986527918127658, -92.15988674904834),
  const LatLng(14.987724609434636, -92.16170276332379),
  const LatLng(14.988472538100641, -92.16374401966348),
  const LatLng(14.989057280497871, -92.16541925758965),
  const LatLng(14.989206865505631, -92.16605275092306),
  const LatLng(14.993449596806094, -92.16419450383349),
  const LatLng(14.994523864759238, -92.16363139864822),
  const LatLng(14.995543734406175, -92.16312460398147),
  const LatLng(14.996250841199759, -92.1644619788005),
];

const PolylineId polylineForaneaCacahoatan = PolylineId("Foranea Cacahoatan");
final Polyline polylineRX = Polyline(
  polylineId: polylineForaneaCacahoatan,
  color:
      const Color.fromARGB(255, 42, 192, 212), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: routeCoordinatesForCACREGRESO,
);

Set<Polyline> polylineIdaCacahoatan = {polylineRX};
