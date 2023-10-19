import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.87200744395737, -92.26052992873105), //BASE DE IDA
  const LatLng(14.874083677297367, -92.25999870815606),
  const LatLng(14.874253592170493, -92.2599031456736),
  const LatLng(14.874379089373438, -92.259795181962),
  const LatLng(14.874534198178955, -92.2596135402891),
  const LatLng(14.874601881987282, -92.2594931753305),
  const LatLng(14.875490563381264, -92.25788120872737),
  const LatLng(14.875813188055664, -92.25796452382735),
  const LatLng(14.876312383319636, -92.25821155989688),
  const LatLng(14.876544339361804, -92.258339219691),
  const LatLng(14.877193498594753, -92.25929248155323),
  const LatLng(14.877591995487299, -92.25999699608744),
  const LatLng(14.877694929810437, -92.26011736104584),
  const LatLng(14.878358398438618, -92.26058011753436),
  const LatLng(14.878569906514615, -92.26066619671535),
  const LatLng(14.878814120241096, -92.26075197951964),
  const LatLng(14.879021460860072, -92.26085878364003),
  const LatLng(14.87924572438996, -92.2610957581179),
  const LatLng(14.879655331400759, -92.26075854299286),
  const LatLng(14.880005287210267, -92.26052250860259),
  const LatLng(14.879581027592113, -92.25937111045553),
  const LatLng(14.880146667371292, -92.2590490702509),
  const LatLng(14.88028337182117, -92.25893977022402),
  const LatLng(14.880077731871195, -92.2582243358699),
  const LatLng(14.879269609030167, -92.25868658536318),
  const LatLng(14.879470606011559, -92.25902597864577),
  const LatLng(14.880306628176577, -92.2613800564238),
  const LatLng(14.880590890969948, -92.26134588685943),
  const LatLng(14.88096466840766, -92.26135662383555),
  const LatLng(14.881267595862708, -92.26143303037043),
  const LatLng(14.881460070190212, -92.2615155082973),
  const LatLng(14.881897594823224, -92.26176565009023),
  const LatLng(14.882094739685256, -92.26187590429721),
  const LatLng(14.882298691387136, -92.26197717197128),
  const LatLng(14.88357705694138, -92.26258497126855),
  const LatLng(14.884309899306894, -92.26288307997146),
  const LatLng(14.884532266608709, -92.26295556179777),
  const LatLng(14.884828828069889, -92.26299693644138),
  const LatLng(14.885091921331318, -92.26301042143332),
  const LatLng(14.885423159567916, -92.26278253331117),
  const LatLng(14.88587766091309, -92.26256227798602),
  const LatLng(14.885999025364844, -92.26257070610399),
  const LatLng(14.886353620675346, -92.26240730651593),
  const LatLng(14.888737444584494, -92.26152849135676),
  const LatLng(14.889097018721273, -92.26251306887336),
  const LatLng(14.890991389282519, -92.26179754245119),
  const LatLng(14.892037855610866, -92.2613717560206),
  const LatLng(14.892995417267707, -92.26097482235073),
  const LatLng(14.894886713506219, -92.2601493892079),
  const LatLng(14.897702289015541, -92.25888361211953),
  const LatLng(14.898959934815283, -92.26181796788642),
  const LatLng(14.899230335807339, -92.26246089739983),
  const LatLng(14.899339849126726, -92.26261244219623),
  const LatLng(14.899453250436165, -92.2627431998973),
  const LatLng(14.900020329279675, -92.26367645594193),
  const LatLng(14.901219636627955, -92.26563682179142),
  const LatLng(14.903268483304721, -92.26890682512662),
  const LatLng(14.90361505940978, -92.26949929582086),
  const LatLng(14.904013181397534, -92.27003975399494),
  const LatLng(14.905836926441447, -92.26878361838716),
  const LatLng(14.906292234165686, -92.26847441774086),
  const LatLng(14.907318097604133, -92.2678270031748),
  const LatLng(14.907812021736078, -92.26745680375836),
  const LatLng(14.90878248487567, -92.26688105703705),
  const LatLng(14.909857465435127, -92.26622370312488),
  const LatLng(14.910875557347362, -92.26556710256537),
  const LatLng(14.911869485847209, -92.26493187404516),
  const LatLng(14.912965571023832, -92.26419438149794),
  const LatLng(14.912507893612629, -92.26313089393064),
  const LatLng(14.912002254248074, -92.26223082954596),
  const LatLng(14.911578957272745, -92.26124022614373),
  const LatLng(14.911217417249786, -92.26039075707065),
  const LatLng(14.91057069837624, -92.25881773493259),
  const LatLng(14.910135109155835, -92.25778389895918),
  const LatLng(14.909730857220886, -92.25660340776793),
  const LatLng(14.908841227464555, -92.25713259494617),
  const LatLng(14.908411062159404, -92.25733174109645),
];

const PolylineId polylineRuta12IDA = PolylineId("Ruta 12");
final Polyline polylineRuta12 = Polyline(
  polylineId: polylineRuta12IDA,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);

const PolylineId polylineRuta12RE = PolylineId("Ruta 12");
final Polyline polylineRuta1REGRESO = Polyline(
  polylineId: polylineRuta12RE,
  color: Colors.pink, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);

Marker markerIR = const Marker(
    markerId: MarkerId('markerIdaRUTA12'),
    position: LatLng(14.87200744395737, -92.26052992873105),
    infoWindow: InfoWindow(title: "Base de Ida", snippet: "RUTA IDA 12"));
Marker markerRR = const Marker(
    markerId: MarkerId('markerRegresoRUTA3'),
    position: LatLng(14.908411062159404, -92.25733174109645),
    infoWindow:
        InfoWindow(title: "Base de Regreso", snippet: "RUTA REGRESO 12"));

Set<Polyline> polylineIDA12 = {polylineRuta12};
Set<Polyline> polyline12REGRESO = {polylineRuta1REGRESO};

Set<Marker> markerRuta12 = {markerIR, markerRR};

List<LatLng> ruta2 = [
  const LatLng(14.87200744395737, -92.26052992873105),
  const LatLng(14.874083677297367, -92.25999870815606),
  const LatLng(14.874253592170493, -92.2599031456736),
  const LatLng(14.874379089373438, -92.259795181962),
  const LatLng(14.874534198178955, -92.2596135402891),
  const LatLng(14.875503022568767, -92.25787708383574),
  const LatLng(14.875809457791634, -92.2579551808973),
  const LatLng(14.876538996029911, -92.25832855721997),
  const LatLng(14.876580638795392, -92.25838685138045),
  const LatLng(14.877192565022709, -92.25930440632871),
  const LatLng(14.876544339361804, -92.258339219691),
  const LatLng(14.877193498594753, -92.25929248155323),
  const LatLng(14.877591995487299, -92.25999699608744),
  const LatLng(14.877694929810437, -92.26011736104584),
  const LatLng(14.878358398438618, -92.26058011753436),
  const LatLng(14.878569906514615, -92.26066619671535),
  const LatLng(14.878814120241096, -92.26075197951964),
  const LatLng(14.879021460860072, -92.26085878364003),
  const LatLng(14.87924572438996, -92.2610957581179),
  const LatLng(14.879655331400759, -92.26075854299286),
  const LatLng(14.880005287210267, -92.26052250860259),
  const LatLng(14.879581027592113, -92.25937111045553),
  const LatLng(14.880146667371292, -92.2590490702509),
  const LatLng(14.88028337182117, -92.25893977022402),
  const LatLng(14.880077731871195, -92.2582243358699),
  const LatLng(14.879269609030167, -92.25868658536318),
  const LatLng(14.879470606011559, -92.25902597864577),
  const LatLng(14.880306628176577, -92.2613800564238),
  const LatLng(14.880590890969948, -92.26134588685943),
  const LatLng(14.88096466840766, -92.26135662383555),
  const LatLng(14.881267595862708, -92.26143303037043),
  const LatLng(14.881460070190212, -92.2615155082973),
  const LatLng(14.881897594823224, -92.26176565009023),
  const LatLng(14.882094739685256, -92.26187590429721),
  const LatLng(14.882298691387136, -92.26197717197128),
  const LatLng(14.88357705694138, -92.26258497126855),
  const LatLng(14.884309899306894, -92.26288307997146),
  const LatLng(14.884532266608709, -92.26295556179777),
  const LatLng(14.884828828069889, -92.26299693644138),
  const LatLng(14.885091921331318, -92.26301042143332),
  const LatLng(14.885423159567916, -92.26278253331117),
  const LatLng(14.88587766091309, -92.26256227798602),
  const LatLng(14.888737444584494, -92.26152849135676),
  const LatLng(14.889655363344417, -92.26115090318198),
  const LatLng(14.89161267051743, -92.26040479999517),
  const LatLng(14.894459481353797, -92.25916176018187),
  const LatLng(14.895397637948083, -92.25876441185652),
  const LatLng(14.895827408398757, -92.25973977645269),
  const LatLng(14.895892858229596, -92.25971697765922),
  const LatLng(14.896828658292128, -92.260130217243),
  const LatLng(14.897094992372079, -92.25998403685814),
  const LatLng(14.897330738566836, -92.25987934636979),
  const LatLng(14.897467949562436, -92.260172096956),
  const LatLng(14.897571631661902, -92.26043696509664),
  const LatLng(14.898545016958755, -92.26085115302641),
  const LatLng(14.898964364445552, -92.26181679563462),
  const LatLng(14.903896928072104, -92.2595546791292),
  const LatLng(14.905389900922291, -92.25888949125196),
  const LatLng(14.908411062159404, -92.25733174109645),
];
