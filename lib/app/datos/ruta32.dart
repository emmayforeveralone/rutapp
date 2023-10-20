import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
const LatLng(14.920303685730518, -92.28692641213105),
const LatLng(14.920290681545351, -92.28687181230858),
const LatLng(14.91915289425751, -92.28654831012456),
const LatLng(14.918878125419873, -92.28645448502081),
const LatLng(14.91879862860715, -92.28641436358123),
const LatLng(14.91867940594939, -92.28635401387977),
const LatLng(14.9182731412863, -92.2862547721446),
const LatLng(14.917507552573479, -92.28604913624334),
const LatLng(14.917244365394941, -92.28596444454234),
const LatLng(14.917160779348519, -92.28592622306577),
const LatLng(14.917145228452586, -92.285920858648),
const LatLng(14.917127085739233, -92.28590342429027),
const LatLng(14.91705062714269, -92.28581289973414),
const LatLng(14.917021469196957, -92.28578674819751),
const LatLng(14.916973520564925, -92.2857713254944),
const LatLng(14.916820603237891, -92.2857679727323),
const LatLng(14.916707655281062, -92.2859103315471),
const LatLng(14.916663594311805, -92.28595190578758),
const LatLng(14.916433444045946, -92.28610078703224),
const LatLng(14.916037943121959, -92.2864369345042),
const LatLng(14.9157883324416, -92.28667952391201),
const LatLng(14.915399982827262, -92.2871458192962),
const LatLng(14.915303436873094, -92.28721019230939),
const LatLng(14.915233466853502, -92.28723482322287),
const LatLng(14.915077903429356, -92.28727791665878),
const LatLng(14.91438079808603, -92.28707050996502),
const LatLng(14.913397696722395, -92.28686238474711),


const LatLng(14.912739683828407, -92.28670228221756),
const LatLng(14.912238804522765, -92.28659901717184),
const LatLng(14.911821512204352, -92.28653397360435),
const LatLng(14.910759522761248, -92.2862653377891),
const LatLng(14.90979874605353, -92.28602933861258),
const LatLng(14.909821115131887, -92.28583849106745),
const LatLng(14.909098509704915, -92.28566942191256),
const LatLng(14.90823607288802, -92.28543199690208),
const LatLng(14.908158315170025, -92.28540182204974),
const LatLng(14.907295808531064, -92.28526229664342),
const LatLng(14.906526789238518, -92.28521956813883),
const LatLng(14.906435542601296, -92.28520797002497),
const LatLng(14.906541808630813, -92.28462652296597),



const LatLng(14.906898610784536, -92.28259826037785),
const LatLng(14.909860250524845, -92.27650603890591),
const LatLng(14.90989459324893, -92.27641953766776),
const LatLng(14.910123690453453, -92.2760185316792),
const LatLng(14.910187480442774, -92.27588474080605),



const LatLng(14.910274309074222, -92.2757432542826),
const LatLng(14.910368913363317, -92.27558969781803),
const LatLng(14.910425287133176, -92.27549783215846),
const LatLng(14.91069967391981, -92.27521594463222),
const LatLng(14.910838797773563, -92.27507971917163),
const LatLng(14.911269231252298, -92.27477591170229),
const LatLng(14.911691060436832, -92.27454926504136),
const LatLng(14.912098504762413, -92.27435954621228),
const LatLng(14.913004081270993, -92.27397340235896),
const LatLng(14.913450712886949, -92.2737691533505),
const LatLng(14.913555683217368, -92.2737047803354),
const LatLng(14.91450106185352, -92.27328300296611),
const LatLng(14.914863778219399, -92.27308194543825),
const LatLng(14.914959028452355, -92.27299611474973),
const LatLng(14.915272036040388, -92.27273330006642),
const LatLng(14.915440085241942, -92.2725215359252),
const LatLng(14.916174916599296, -92.27176813168309),
const LatLng(14.916313315962702, -92.27165660622589),
const LatLng(14.916519834754288, -92.2715054729858),




const LatLng(14.916662385007614, -92.27141226622625),
const LatLng(14.917577336084367, -92.27097203393642),
const LatLng(14.918033679624356, -92.2707400903656),
const LatLng(14.91835429716708, -92.2706118495159),
const LatLng(14.919068080852453, -92.2702868711928),
const LatLng(14.919414685526107, -92.27008598989491),
const LatLng(14.919766699323318, -92.26979144370819),
const LatLng(14.919872314516978, -92.26965196884106),
const LatLng(14.92001847915365, -92.26942979453399),
const LatLng(14.920164721013936, -92.26907582921879),
const LatLng(14.920224114695557, -92.2688817393671),
const LatLng(14.920248747519306, -92.26857463888827),
const LatLng(14.920225247570624, -92.268371389565),
const LatLng(14.920150144890941, -92.26807213535197),
const LatLng(14.919839313604777, -92.26724897515156),
const LatLng(14.919736326416803, -92.26695929888218),
const LatLng(14.919571667317136, -92.2665878255072),
const LatLng(14.919544453552852, -92.26652680525187),
const LatLng(14.9194971534311, -92.2664148230269),
const LatLng(14.919418390978873, -92.26628961511635),
const LatLng(14.919360075725168, -92.2661796445489),
const LatLng(14.919270011024073, -92.26605559238314),
const LatLng(14.919186425763845, -92.26596037396222),
const LatLng(14.91911402629878, -92.26587427115197),
const LatLng(14.918995451765143, -92.26572809076583),
const LatLng(14.918949447420516, -92.26568584597592),
const LatLng(14.918882708704395, -92.26562884903201),
const LatLng(14.918536055819562, -92.265378733042),
const LatLng(14.91803570406722, -92.2650216106227),
const LatLng(14.917673228905638, -92.2647342944038),
const LatLng(14.917337798277538, -92.26436820755931),
const LatLng(14.91727883450568, -92.26427030693155),
const LatLng(14.917090180017038, -92.26404968488437),
const LatLng(14.91674417219845, -92.26356353450454),
const LatLng(14.916617833463535, -92.2633650332836),
const LatLng(14.91644726604449, -92.26300777546106),
const LatLng(14.915855343711893, -92.26200054466779),
const LatLng(14.915692058255766, -92.26204346000951),
const LatLng(14.914932524776178, -92.26250453334873),
const LatLng(14.914676264826015, -92.26270891952326),
const LatLng(14.914125806501623, -92.2629477408812),
const LatLng(14.913394596816264, -92.26340077584798),
const LatLng(14.912744930692805, -92.26374468276998),
const LatLng(14.91200500408671, -92.26415634056605),



const LatLng(14.91227992662656, -92.26466595218413),
const LatLng(14.912564384692695, -92.26504079089374),
const LatLng(14.912889664297827, -92.26541093573486),
const LatLng(14.913442841673337, -92.26499722269722),
const LatLng(14.914019723637285, -92.26464265272432),
const LatLng(14.91474038932197, -92.26414880243462),
const LatLng(14.91484341514104, -92.26433923927331),
const LatLng(14.915222074962239, -92.26495638271793),

];

const PolylineId polylineRuta32IDA = PolylineId("Ruta 32");
final Polyline polylineRuta32 = Polyline(
  polylineId: polylineRuta32IDA,
  color: const Color.fromARGB(255, 12, 234, 38), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR =  Marker(
    markerId: const MarkerId('markerIdaRUTA32'),
    position: const LatLng(14.920303685730518, -92.28692641213105),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),

    infoWindow: const InfoWindow(title: "Base de Ida", snippet: "Ruta 18 de Octubre"));






List<LatLng> ruta2 = [
const LatLng(14.920303685730518, -92.28692641213105),
const LatLng(14.920290681545351, -92.28687181230858),
const LatLng(14.91915289425751, -92.28654831012456),
const LatLng(14.918878125419873, -92.28645448502081),
const LatLng(14.91879862860715, -92.28641436358123),
const LatLng(14.91867940594939, -92.28635401387977),
const LatLng(14.9182731412863, -92.2862547721446),
const LatLng(14.917507552573479, -92.28604913624334),
const LatLng(14.917244365394941, -92.28596444454234),
const LatLng(14.917160779348519, -92.28592622306577),
const LatLng(14.917145228452586, -92.285920858648),
const LatLng(14.917127085739233, -92.28590342429027),
const LatLng(14.91705062714269, -92.28581289973414),
const LatLng(14.917021469196957, -92.28578674819751),
const LatLng(14.916973520564925, -92.2857713254944),
const LatLng(14.916820603237891, -92.2857679727323),
const LatLng(14.916707655281062, -92.2859103315471),
const LatLng(14.916663594311805, -92.28595190578758),
const LatLng(14.916433444045946, -92.28610078703224),
const LatLng(14.916037943121959, -92.2864369345042),
const LatLng(14.9157883324416, -92.28667952391201),
const LatLng(14.915399982827262, -92.2871458192962),
const LatLng(14.915303436873094, -92.28721019230939),
const LatLng(14.915233466853502, -92.28723482322287),
const LatLng(14.915077903429356, -92.28727791665878),
const LatLng(14.91438079808603, -92.28707050996502),
const LatLng(14.913397696722395, -92.28686238474711),


const LatLng(14.912739683828407, -92.28670228221756),
const LatLng(14.912238804522765, -92.28659901717184),
const LatLng(14.911821512204352, -92.28653397360435),
const LatLng(14.910759522761248, -92.2862653377891),
const LatLng(14.90979874605353, -92.28602933861258),
const LatLng(14.909821115131887, -92.28583849106745),
const LatLng(14.909098509704915, -92.28566942191256),
const LatLng(14.90823607288802, -92.28543199690208),
const LatLng(14.908158315170025, -92.28540182204974),
const LatLng(14.907295808531064, -92.28526229664342),
const LatLng(14.906526789238518, -92.28521956813883),
const LatLng(14.906435542601296, -92.28520797002497),
const LatLng(14.906541808630813, -92.28462652296597),



const LatLng(14.906898610784536, -92.28259826037785),
const LatLng(14.909860250524845, -92.27650603890591),
const LatLng(14.90989459324893, -92.27641953766776),
const LatLng(14.910123690453453, -92.2760185316792),
const LatLng(14.910187480442774, -92.27588474080605),



const LatLng(14.910274309074222, -92.2757432542826),
const LatLng(14.910368913363317, -92.27558969781803),
const LatLng(14.910425287133176, -92.27549783215846),
const LatLng(14.91069967391981, -92.27521594463222),
const LatLng(14.910838797773563, -92.27507971917163),
const LatLng(14.911269231252298, -92.27477591170229),
const LatLng(14.911691060436832, -92.27454926504136),
const LatLng(14.912098504762413, -92.27435954621228),
const LatLng(14.913004081270993, -92.27397340235896),
const LatLng(14.913450712886949, -92.2737691533505),
const LatLng(14.913555683217368, -92.2737047803354),
const LatLng(14.91450106185352, -92.27328300296611),
const LatLng(14.914863778219399, -92.27308194543825),
const LatLng(14.914959028452355, -92.27299611474973),
const LatLng(14.915272036040388, -92.27273330006642),
const LatLng(14.915440085241942, -92.2725215359252),
const LatLng(14.916174916599296, -92.27176813168309),
const LatLng(14.916313315962702, -92.27165660622589),
const LatLng(14.916519834754288, -92.2715054729858),




const LatLng(14.916662385007614, -92.27141226622625),
const LatLng(14.917577336084367, -92.27097203393642),
const LatLng(14.918033679624356, -92.2707400903656),
const LatLng(14.91835429716708, -92.2706118495159),
const LatLng(14.919068080852453, -92.2702868711928),
const LatLng(14.919414685526107, -92.27008598989491),
const LatLng(14.919766699323318, -92.26979144370819),
const LatLng(14.919872314516978, -92.26965196884106),
const LatLng(14.92001847915365, -92.26942979453399),
const LatLng(14.920164721013936, -92.26907582921879),
const LatLng(14.920224114695557, -92.2688817393671),
const LatLng(14.920248747519306, -92.26857463888827),
const LatLng(14.920225247570624, -92.268371389565),
const LatLng(14.920150144890941, -92.26807213535197),
const LatLng(14.919839313604777, -92.26724897515156),
const LatLng(14.919736326416803, -92.26695929888218),
const LatLng(14.919571667317136, -92.2665878255072),
const LatLng(14.919544453552852, -92.26652680525187),
const LatLng(14.9194971534311, -92.2664148230269),
const LatLng(14.919418390978873, -92.26628961511635),
const LatLng(14.919360075725168, -92.2661796445489),
const LatLng(14.919270011024073, -92.26605559238314),
const LatLng(14.919186425763845, -92.26596037396222),
const LatLng(14.91911402629878, -92.26587427115197),
const LatLng(14.918995451765143, -92.26572809076583),
const LatLng(14.918949447420516, -92.26568584597592),
const LatLng(14.918882708704395, -92.26562884903201),
const LatLng(14.918536055819562, -92.265378733042),
const LatLng(14.91803570406722, -92.2650216106227),
const LatLng(14.917673228905638, -92.2647342944038),
const LatLng(14.917337798277538, -92.26436820755931),
const LatLng(14.91727883450568, -92.26427030693155),
const LatLng(14.917238129786194, -92.26434382055606),
const LatLng(14.917219987080678, -92.26437533651043),
const LatLng(14.916691687748495, -92.26481057592116),
const LatLng(14.916418384853653, -92.26499311016607),
const LatLng(14.91621295097006, -92.26508304739389),
const LatLng(14.91588321411398, -92.265202326317),
const LatLng(14.915430478721463, -92.26529688722972),
const LatLng(14.91535466748155, -92.26518490500447),
const LatLng(14.915264601102827, -92.26503537185626)


];

const PolylineId polylineRuta32REGRESO = PolylineId("Ruta 32");
final Polyline polylineRuta32RE = Polyline(
  polylineId: polylineRuta32REGRESO,
  color: const Color.fromARGB(255, 12, 234, 38), // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);





Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA32'),
    position: const LatLng(14.915222074962239, -92.26495638271793),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    infoWindow:
        const InfoWindow(title: "Base de Regreso", snippet: "Ruta 18 de Octubre"));

Set<Polyline> polylineIDA32 = {polylineRuta32};
Set<Polyline> polylineREGRESO32 = {polylineRuta32RE};



Set<Marker> markerRuta32 = {markerIR, markerRR};
