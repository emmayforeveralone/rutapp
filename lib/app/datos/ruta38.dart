import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
const LatLng(14.900148902404279, -92.24364977720329),
const LatLng(14.900544582048251, -92.24340922679733),
const LatLng(14.900551226283865, -92.24337206625506),
const LatLng(14.90052373347752, -92.24333859630634),
const LatLng(14.900481685649279, -92.24329508537305),
const LatLng(14.900467939242112, -92.24325157443971),
const LatLng(14.900429125851627, -92.24314983501316),
const LatLng(14.900337109213554, -92.24295604541287),
const LatLng(14.90040061365802, -92.24292385890627),
const LatLng(14.900514014408751, -92.24316659881701),
const LatLng(14.900548358623235, -92.24322627796465),
const LatLng(14.9005885348679, -92.24326449944495),
const LatLng(14.90061445502131, -92.24328126325044),
const LatLng(14.900639079164156, -92.24328662766821),
const LatLng(14.900670831345716, -92.24328327490893),
const LatLng(14.900710359563295, -92.2432792515956),
const LatLng(14.900740815726008, -92.24326181723787),
const LatLng(14.901026585051532, -92.24313173009493),
const LatLng(14.901891018740985, -92.24269050671523),
const LatLng(14.901924066736118, -92.24267106070083),
const LatLng(14.901947394729627, -92.24263418032868),
const LatLng(14.901977202717662, -92.24258724167323),
const LatLng(14.901983034715736, -92.24252085699752),
const LatLng(14.901962298725062, -92.24246788337209),
const LatLng(14.90184371473907, -92.24220301523059),
const LatLng(14.901571554522945, -92.24164444520362),
const LatLng(14.901532674464486, -92.24157269611601),
const LatLng(14.901452322320292, -92.24137957706536),
const LatLng(14.901436741082783, -92.24130828764942),
const LatLng(14.901437389083918, -92.24122111585102),
const LatLng(14.901506077213476, -92.24051301267846),
const LatLng(14.90149052518566, -92.2404459574512),
const LatLng(14.90148145316924, -92.24039365437798),
const LatLng(14.901421189050017, -92.24032861080805),
const LatLng(14.901249468616784, -92.24018511262162),
const LatLng(14.901178836399717, -92.2401415267273),
const LatLng(14.901045995926934, -92.24006910708549),
const LatLng(14.900987111247836, -92.24004960636513),
const LatLng(14.900953415106116, -92.24004692415625),
const LatLng(14.900892502836541, -92.24004960636513),
const LatLng(14.900043690352556, -92.24048607201992),
const LatLng(14.89957194181393, -92.24070534260638),
const LatLng(14.899498717015842, -92.24075965733914),
const LatLng(14.899472148720891, -92.2407817855624),
const LatLng(14.899457892561266, -92.2408039137857),
const LatLng(14.899450764481116, -92.24083408863562),
const LatLng(14.899437156327421, -92.24086493403776),
const LatLng(14.899439748356766, -92.24089041502216),
const LatLng(14.899439748356766, -92.24094271809535),
const LatLng(14.899459188575825, -92.24098161012415),
const LatLng(14.899763287486604, -92.24161579907953),
const LatLng(14.899909423107967, -92.24193949857623),
const LatLng(14.899856286614826, -92.24196497956207),
const LatLng(14.898173037493528, -92.24283940919571),
const LatLng(14.898176277548156, -92.24286757239155),
const LatLng(14.898181461637167, -92.2428950650326),
const LatLng(14.898185997714942, -92.24291316994255),
const LatLng(14.89817822158156, -92.24293529816583),
const LatLng(14.898170445447883, -92.24295340307579),
const LatLng(14.89814906107885, -92.2430285049245),
const LatLng(14.898133508807911, -92.24304660983806),
const LatLng(14.898077779832182, -92.24308885462796),
const LatLng(14.898046675280026, -92.24310293622759),
const LatLng(14.898020754817555, -92.24310897119756),
const LatLng(14.897968913883226, -92.2431136650631),
const LatLng(14.897941697387708, -92.243110312302),
const LatLng(14.897903464684807, -92.24309891291529),
const LatLng(14.897874304144898, -92.24308281966198),
const LatLng(14.897845791612191, -92.24305666812687),
const LatLng(14.89783866347867, -92.2430445981869),
const LatLng(14.897808206905538, -92.24299765953144),
const LatLng(14.897792006598912, -92.24296882578597),
const LatLng(14.897786174488234, -92.24293529817493),
const LatLng(14.897788766537438, -92.24291316995166),
const LatLng(14.897786822500525, -92.24288031289285),
const LatLng(14.897792006598912, -92.24284343252071),
const LatLng(14.897795355592857, -92.24283747188959),
const LatLng(14.896781232245893, -92.24279821530575),
const LatLng(14.896012308896028, -92.2427876830542),
const LatLng(14.895997312402047, -92.24338694188135),
const LatLng(14.895948138754, -92.24398431545961),
const LatLng(14.895243654005318, -92.24395814630101),
const LatLng(14.894959585547781, -92.24395335891265),
const LatLng(14.894923498649147, -92.243936124318),
const LatLng(14.894907768460664, -92.243912187381),
const LatLng(14.894900366018629, -92.243816439633),




const LatLng(14.894919029168815, -92.24369775768258),
const LatLng(14.894957064914204, -92.24334970644759),
const LatLng(14.894977955727052, -92.24273492507041),
const LatLng(14.895534571430797, -92.2427507968365),
const LatLng(14.896008920881549, -92.24277158395232),
const LatLng(14.89677313779911, -92.24278740099489),
const LatLng(14.897802221243252, -92.24282808701408),
const LatLng(14.897813237452024, -92.24280059437181),
const LatLng(14.897822957635185, -92.2427831600141),
const LatLng(14.897851470169938, -92.24275566737305),
const LatLng(14.897874798604642, -92.242722139762),
const LatLng(14.89789618300146, -92.242710069822),
const LatLng(14.89793700775301, -92.24268660049253),
const LatLng(14.897970704367856, -92.24269129435717),


//pararuta38 
const LatLng(14.898012177116557, -92.24268592994012),
const LatLng(14.898056889914885, -92.2426919649101),
const LatLng(14.898106786796438, -92.24271878700158),
const LatLng(14.898115858955041, -92.2427355508071),
const LatLng(14.898133355259827, -92.24274762074705),
const LatLng(14.898162515764662, -92.24281065265579),
const LatLng(14.898180660077504, -92.24285557965699),
const LatLng(14.898178716044814, -92.24290050665773),
const LatLng(14.898167051844256, -92.24297493795655),
const LatLng(14.898146963497338, -92.24303394655196),
const LatLng(14.898127523159733, -92.24303864042022),
const LatLng(14.898094474581923, -92.24307820300125),
const LatLng(14.89808086634253, -92.24308557907568),
const LatLng(14.898065962079354, -92.24309496680677),
const LatLng(14.898049761792105, -92.24310100177676),
const LatLng(14.89803680156144, -92.24311038950785),



const LatLng(14.897986683918722, -92.2431098149136),
const LatLng(14.897946149797075, -92.24380297398645),
const LatLng(14.897885723902387, -92.24509455756349),
const LatLng(14.897890907998379, -92.24517502382994),
const LatLng(14.897830444153403, -92.24649764797209),
const LatLng(14.89776382243428, -92.24866708573529),
const LatLng(14.897753454236053, -92.24887294526702),
const LatLng(14.897733741946027, -92.24976687022853),
const LatLng(14.89768855566506, -92.25081527199791),
const LatLng(14.897641250739854, -92.25115993584572),
const LatLng(14.897593164785137, -92.25187305720205),
const LatLng(14.897581207274845, -92.2522241793466),
const LatLng(14.897590872090946, -92.25239365486058),
const LatLng(14.89769131406758, -92.25278391626705),
const LatLng(14.89784035691552, -92.25307761815344),
const LatLng(14.898268317877521, -92.25359399014613),
const LatLng(14.899627222147664, -92.25528970982182),
const LatLng(14.900359929664948, -92.25618272698696),
const LatLng(14.900562845477257, -92.25634232963513),
const LatLng(14.900659398044382, -92.25639396215612),
const LatLng(14.900785110719816, -92.25648448671008),
const LatLng(14.900822694908268, -92.25653746034018),
const LatLng(14.900903047291932, -92.25657903458394),
const LatLng(14.901367159653097, -92.25684362540106),
const LatLng(14.902333400626132, -92.25748508951837),
const LatLng(14.90262823980311, -92.25772313556942),
const LatLng(14.902733863411191, -92.2578203656508),
const LatLng(14.903338456175248, -92.25868912497008),
const LatLng(14.903958380601804, -92.25966018580286),
const LatLng(14.904578765889118, -92.26059038838734),
const LatLng(14.904855530479729, -92.26099535488689),
const LatLng(14.90528330514496, -92.26165704338997),
const LatLng(14.905882578729292, -92.26251870581552),
const LatLng(14.906093665943315, -92.26286940591929),
const LatLng(14.906467130692644, -92.26343238469099),
const LatLng(14.906637149870889, -92.26365974848044),
const LatLng(14.907441558393609, -92.26490296270906),
const LatLng(14.90781471060246, -92.26549608335155),
const LatLng(14.90802482297089, -92.26587741541249),
const LatLng(14.90837461882766, -92.26644151508752),
const LatLng(14.908556257497445, -92.26668942364984),
const LatLng(14.908712420595148, -92.26692814024608),
const LatLng(14.911213313378857, -92.26534421101134),
const LatLng(14.91228029452188, -92.26466214169615),
const LatLng(14.91257030853164, -92.26505048003935),
const LatLng(14.912887164559882, -92.26541190769838),
const LatLng(14.912582936783396, -92.26565057225893),



];

const PolylineId polylineRuta38IDA = PolylineId("Ruta 38");
final Polyline polylineRuta38 = Polyline(
  polylineId: polylineRuta38IDA,
  color: const Color.fromARGB(255, 230, 32, 32), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR =  Marker(
    markerId: const MarkerId('markerIdaRUTA38'),
    position: const LatLng(14.900148902404279, -92.24364977720329),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),

    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "Ruta Bonanza por Central"));








List<LatLng> ruta2 =[

const LatLng(14.900286610350124, -92.24358155588045),
const LatLng(14.90010703487695, -92.24366414421605),
const LatLng(14.899992047346293, -92.24350211744427),
const LatLng(14.89996024227099, -92.24335528066938),
const LatLng(14.89970335497467, -92.2428210986561),
const LatLng(14.90016085880976, -92.24258312181752),
const LatLng(14.899860073110135, -92.24199055027944),
const LatLng(14.898191420527075, -92.24282795213702),
const LatLng(14.898159615185683, -92.2430001055935),
const LatLng(14.89808377166734, -92.24308111897938),
const LatLng(14.897968783056337, -92.24310896733078),
const LatLng(14.897919851713874, -92.2431950440533),




const LatLng(14.898178716044814, -92.24290050665773),
const LatLng(14.898167051844256, -92.24297493795655),
const LatLng(14.898146963497338, -92.24303394655196),
const LatLng(14.898127523159733, -92.24303864042022),
const LatLng(14.898094474581923, -92.24307820300125),
const LatLng(14.89808086634253, -92.24308557907568),
const LatLng(14.898065962079354, -92.24309496680677),
const LatLng(14.898049761792105, -92.24310100177676),
const LatLng(14.89803680156144, -92.24311038950785),



const LatLng(14.897986683918722, -92.2431098149136),
const LatLng(14.897946149797075, -92.24380297398645),
const LatLng(14.897885723902387, -92.24509455756349),
const LatLng(14.897890907998379, -92.24517502382994),
const LatLng(14.897830444153403, -92.24649764797209),
const LatLng(14.89776382243428, -92.24866708573529),
const LatLng(14.897753454236053, -92.24887294526702),
const LatLng(14.897733741946027, -92.24976687022853),
const LatLng(14.89768855566506, -92.25081527199791),
const LatLng(14.897641250739854, -92.25115993584572),
const LatLng(14.897593164785137, -92.25187305720205),
const LatLng(14.897581207274845, -92.2522241793466),
const LatLng(14.897590872090946, -92.25239365486058),
const LatLng(14.89769131406758, -92.25278391626705),
const LatLng(14.89784035691552, -92.25307761815344),
const LatLng(14.898268317877521, -92.25359399014613),
const LatLng(14.899627222147664, -92.25528970982182),
const LatLng(14.900359929664948, -92.25618272698696),
const LatLng(14.900562845477257, -92.25634232963513),
const LatLng(14.900659398044382, -92.25639396215612),
const LatLng(14.900785110719816, -92.25648448671008),
const LatLng(14.900822694908268, -92.25653746034018),
const LatLng(14.900903047291932, -92.25657903458394),
const LatLng(14.901367159653097, -92.25684362540106),
const LatLng(14.902333400626132, -92.25748508951837),
const LatLng(14.90262823980311, -92.25772313556942),
const LatLng(14.902733863411191, -92.2578203656508),
const LatLng(14.903338456175248, -92.25868912497008),
const LatLng(14.903958380601804, -92.25966018580286),
const LatLng(14.904578765889118, -92.26059038838734),
const LatLng(14.904855530479729, -92.26099535488689),
const LatLng(14.90528330514496, -92.26165704338997),
const LatLng(14.905882578729292, -92.26251870581552),
const LatLng(14.906093665943315, -92.26286940591929),
const LatLng(14.906467130692644, -92.26343238469099),
const LatLng(14.906637149870889, -92.26365974848044),
const LatLng(14.907441558393609, -92.26490296270906),
const LatLng(14.90781471060246, -92.26549608335155),
const LatLng(14.90802482297089, -92.26587741541249),
const LatLng(14.90837461882766, -92.26644151508752),
const LatLng(14.908556257497445, -92.26668942364984),
const LatLng(14.908712420595148, -92.26692814024608),


const LatLng(14.909136814984105, -92.267673932323),
const LatLng(14.909817999010714, -92.26732689675661),
const LatLng(14.912582936783396, -92.26565057225893),

];



const PolylineId polylineRuta38REGRESO = PolylineId("Ruta 38");
final Polyline polylineRuta38RE = Polyline(
  polylineId: polylineRuta38REGRESO,
  color: const Color.fromARGB(255, 230, 32, 32), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);


Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA38'),
    position: const LatLng(14.912582936783396, -92.26565057225893),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "Ruta Bonanza por Central "));

Set<Polyline> polylineIDA38 = {polylineRuta38};
Set<Polyline> polylineREGRESO38 = {polylineRuta38RE};


Set<Marker> markerRuta38 = {markerIR, markerRR};
