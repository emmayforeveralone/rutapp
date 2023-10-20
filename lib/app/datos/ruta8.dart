import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<LatLng> ruta = [
  const LatLng(14.867818838864874, -92.27617462615618),
  const LatLng(14.86756134072032, -92.27588474177979),
  const LatLng(14.867165086494385, -92.27544991520064),
  const LatLng(14.866908921764418, -92.27527460416862),
  const LatLng(14.867763115800308, -92.27401842414574),
  const LatLng(14.86817180386349, -92.27338255727155),
  const LatLng(14.86841675647114, -92.2731464301891),
  const LatLng(14.868620259962883, -92.27297342771638),
  const LatLng(14.868768026710672, -92.27289296143898),
  const LatLng(14.868952086903397, -92.27281920069646),
  const LatLng(14.870344199055577, -92.27263278716698),
  const LatLng(14.870450486580811, -92.27261401170551),
  const LatLng(14.870781014520315, -92.27250806444496),
  const LatLng(14.871190609224564, -92.27235383742818),
  const LatLng(14.87161705351923, -92.27206818216656),
  const LatLng(14.871806296002122, -92.27182678337255),
  const LatLng(14.871912582809465, -92.27174229376261),
  const LatLng(14.872409019257164, -92.27127693049954),
  const LatLng(14.87348929579934, -92.27064290072524),
  const LatLng(14.87488883342767, -92.2701713433179),
  const LatLng(14.875379140222247, -92.27009546775348),
  const LatLng(14.87575243380042, -92.27008071560562),
  const LatLng(14.875976668870276, -92.27019336839587),
  const LatLng(14.876224234482814, -92.27042940278368),
  const LatLng(14.876499019017416, -92.27066543716867),
  const LatLng(14.876685664919522, -92.270743221238),
  const LatLng(14.876999333361896, -92.27079015989956),
  const LatLng(14.87746853902288, -92.27063190956478),
  const LatLng(14.877915709213394, -92.27039453406522),
  const LatLng(14.879171321789842, -92.2691821606286),
  const LatLng(14.879547201067599, -92.26881738022061),
  const LatLng(14.880108939838424, -92.26825387127835),
  const LatLng(14.880228183855184, -92.26802454240467),
  const LatLng(14.880836848426053, -92.26738256779872),
  const LatLng(14.881096073581036, -92.26715592115322),
  const LatLng(14.881685809660715, -92.26678979961456),
  const LatLng(14.881748023481368, -92.26674420206457),
  const LatLng(14.881981325158346, -92.26657119957176),
  const LatLng(14.88306752511672, -92.26826153909184),
  const LatLng(14.883153068567278, -92.26831786547712),
  const LatLng(14.883835330481247, -92.26907690426394),
  const LatLng(14.884480791574461, -92.26838221213565),
  const LatLng(14.884679095497571, -92.26832856795009),
  const LatLng(14.884949980955268, -92.26790477892499),
  const LatLng(14.886275185691996, -92.26665840883615),
  const LatLng(14.886924527750306, -92.2661514713269),
  const LatLng(14.887796794539533, -92.2656110062172),
  const LatLng(14.88874034215908, -92.26517514725565),
  const LatLng(14.889455776609712, -92.26481573124924),
  const LatLng(14.889823861527397, -92.26471783061953),
  const LatLng(14.889893849431934, -92.26462663551956),
  const LatLng(14.889979390177874, -92.26458372016968),
  const LatLng(14.890798505875622, -92.26418943543935),
  const LatLng(14.892006606910462, -92.26371386408245),
  const LatLng(14.892803681975188, -92.26334640145186),
  const LatLng(14.893696661754843, -92.26297089220127),
  const LatLng(14.89473609074147, -92.2625403976547),
  const LatLng(14.896645153609601, -92.26168477297601),
  const LatLng(14.897452342597854, -92.26359110545398),
  const LatLng(14.898452849887073, -92.2631752984801),
  const LatLng(14.899441683414556, -92.26273502622472),
  const LatLng(14.900329451634864, -92.26237561022181),
  const LatLng(14.90105003161939, -92.26202021752896),
  const LatLng(14.902031105165378, -92.2615830174659),
  const LatLng(14.902875730360766, -92.26116183929041),
  const LatLng(14.903783092217317, -92.26076832819703),
  const LatLng(14.904477740954595, -92.26043305207938),
  const LatLng(14.9068493792743, -92.25933334638623),
  const LatLng(14.908398361268306, -92.2586300777285),
  const LatLng(14.909299052108596, -92.25817946661947),
  const LatLng(14.909780721231341, -92.2592270909095),
  const LatLng(14.910630864338238, -92.26110195492242),
  const LatLng(14.911291796449483, -92.2626120385935),
  const LatLng(14.911307763595499, -92.26271266936023),
  const LatLng(14.911775054169398, -92.2636054909554),
  const LatLng(14.91198909213814, -92.26411623787116),
  const LatLng(14.912013014016804, -92.26417617246389),
  const LatLng(14.912281190675971, -92.26466346674016),
  const LatLng(14.91289308545792, -92.26540483155244),
  const LatLng(14.912378137084707, -92.26580222394954),
  const LatLng(14.912447756692464, -92.2657426262038),
];

const PolylineId polylineRuta8IDA = PolylineId("Ruta 8");
final Polyline polylineRuta8 = Polyline(
  polylineId: polylineRuta8IDA,
  color: Colors.blueAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta,
);
Marker markerIR = Marker(
    markerId: const MarkerId('markerIdaRUTA8'),
    position: const LatLng(14.867818838864874, -92.27617462615618),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    infoWindow: const InfoWindow(
        title: "Base de Ida", snippet: "Ruta Bonanza Regreso por la 17"));

List<LatLng> ruta2 = [
  const LatLng(14.912447756692464, -92.2657426262038),
  const LatLng(14.91145609094297, -92.2644614222627),
  const LatLng(14.911077675438047, -92.2646277192457),
  const LatLng(14.91080811879362, -92.26480474502797),
  const LatLng(14.910424518371292, -92.26504882603084),
  const LatLng(14.909125532735164, -92.26594963049536),
  const LatLng(14.90468452530934, -92.26882414593337),
  const LatLng(14.903614797075532, -92.26949519047571),
  const LatLng(14.90177457137266, -92.27070924300793),
  const LatLng(14.901155082190101, -92.27107670561661),
  const LatLng(14.90048115886108, -92.26984288952208),
  const LatLng(14.899887586182818, -92.27022108097201),
  const LatLng(14.899737248742142, -92.26999041101328),
  const LatLng(14.899610239438976, -92.26972219010118),
  const LatLng(14.899532478606734, -92.26954248211005),
  const LatLng(14.899413245276117, -92.26901945138968),
  const LatLng(14.898835221878244, -92.26834353469134),
  const LatLng(14.898811893547558, -92.26824697517372),
  const LatLng(14.898817077621253, -92.26816919111788),
  const LatLng(14.898835221878244, -92.26813164019434),
  const LatLng(14.899317340150043, -92.2678312327743),
  const LatLng(14.898735411468866, -92.26693614295822),
  const LatLng(14.897706369976765, -92.26512565187089),
  const LatLng(14.89694948998353, -92.26382478050107),
  const LatLng(14.896480326727787, -92.26400717071317),
  const LatLng(14.895526444705366, -92.26444168857226),
  const LatLng(14.894328902042933, -92.26155026725603),
  const LatLng(14.892388502737306, -92.26238571954318),
  const LatLng(14.887705490609642, -92.26423714927505),
  const LatLng(14.887627725480193, -92.26427201799208),
  const LatLng(14.887205201111176, -92.26440612844402),
  const LatLng(14.887194832404798, -92.26441149286201),
  const LatLng(14.886715279176727, -92.26432297996541),
  const LatLng(14.88688636315117, -92.26599667838805),
  const LatLng(14.885998247925782, -92.26604388997146),
  const LatLng(14.885796056929316, -92.26607071206148),
  const LatLng(14.885567943782535, -92.26607339427048),
  const LatLng(14.885176521797705, -92.26602243229947),
  const LatLng(14.884800652318306, -92.26595805928345),
  const LatLng(14.884481810812328, -92.26589368626742),
  const LatLng(14.884175929899966, -92.2659017328944),
  const LatLng(14.884054095856374, -92.2658668641774),
  const LatLng(14.88363934113308, -92.26589368626738),
  const LatLng(14.883214216719486, -92.26597147032959),
  const LatLng(14.882703547883283, -92.26615386054166),
  const LatLng(14.881985498779093, -92.26657228514794),
  const LatLng(14.881975129807852, -92.26657228514907),
  const LatLng(14.881648507393157, -92.26682441279519),
  const LatLng(14.881430758841807, -92.26694511220025),
  const LatLng(14.881127465850241, -92.26713018462132),
  const LatLng(14.881098951089873, -92.2671596889235),
  const LatLng(14.880798249875536, -92.26743327424381),
  const LatLng(14.880227953335503, -92.2680233602241),
  const LatLng(14.88010093253711, -92.2682513479892),
  const LatLng(14.879472675757889, -92.26888009698399),
  const LatLng(14.878980143988981, -92.26938167006723),
  const LatLng(14.87791471613817, -92.27040627391193),
  const LatLng(14.877536241723778, -92.27058329970603),
  const LatLng(14.877463657513612, -92.27063962609505),
  const LatLng(14.877003090626264, -92.27079078483911),
  const LatLng(14.87668682989295, -92.2707532339131),
  const LatLng(14.8764872224701, -92.27066203880707),
  const LatLng(14.875966168440643, -92.27018997002087),
  const LatLng(14.875963576128978, -92.27018460560285),
  const LatLng(14.87574322952314, -92.27008804607881),
  const LatLng(14.875310312577925, -92.27010413933311),
  const LatLng(14.874962941480309, -92.27016046572216),
  const LatLng(14.874812586652647, -92.27018460560315),
  const LatLng(14.873777570897074, -92.2705282698012),
  const LatLng(14.873266879715297, -92.2707508931483),
  const LatLng(14.872618792703205, -92.27112372020187),
  const LatLng(14.87239844268088, -92.27128197053294),
  const LatLng(14.872087359903016, -92.27155019143507),
  const LatLng(14.872014773859377, -92.27162261107809),
  const LatLng(14.871892932945517, -92.27176476815515),
  const LatLng(14.871812569751912, -92.27182377675318),
  const LatLng(14.87162073490045, -92.27207590440273),
  const LatLng(14.871387422019408, -92.272239519153),
  const LatLng(14.871180032585748, -92.27236290076706),
  const LatLng(14.870910426023965, -92.27248091796311),
  const LatLng(14.870734144628363, -92.27252115109813),
  const LatLng(14.870411449334071, -92.2726178149232),
  const LatLng(14.869369310684535, -92.27276801862745),
  const LatLng(14.869141180162957, -92.27279484071745),
  const LatLng(14.86888971782412, -92.27283775606226),
  const LatLng(14.86886638625273, -92.27285653152528),
  const LatLng(14.868684918389098, -92.27293163337731),
  const LatLng(14.868439206221632, -92.2731210318805),
  const LatLng(14.86819033547717, -92.27336779510861),
  const LatLng(14.868017940469372, -92.27359444177921),
  const LatLng(14.8677586995983, -92.27402359520264),
  const LatLng(14.869679090688182, -92.27619469464719),
  const LatLng(14.869471040501258, -92.27639388924895),
  const LatLng(14.8693064633475, -92.27652882751156),
  const LatLng(14.869172938394707, -92.2766187863533),
  const LatLng(14.86911083373733, -92.27663806324796),
  const LatLng(14.869011466248361, -92.27661236072174),
  const LatLng(14.868943151073177, -92.27654810440623),
  const LatLng(14.868831362558018, -92.27640674051204),
  const LatLng(14.868294155818631, -92.2767119580255),
  const LatLng(14.868008473074422, -92.27641637895897),
  const LatLng(14.867818838864874, -92.27617462615618),
];

const PolylineId polylineRuta8REGRESO = PolylineId("Ruta 8");
final Polyline polylineRuta8RE = Polyline(
  polylineId: polylineRuta8REGRESO,
  color: Colors.blueAccent, // Color de la línea de la ruta
  width: 5, // Ancho de la línea de la ruta
  points: ruta2,
);
Marker markerRR = Marker(
    markerId: const MarkerId('markerRegresoRUTA8'),
    position: const LatLng(14.912447756692464, -92.2657426262038),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
    infoWindow: const InfoWindow(
        title: "Base de Regreso", snippet: "Ruta Bonanza Regreso por la 17"));

Set<Polyline> polylineIDA8 = {polylineRuta8};
Set<Polyline> polylineREGRESO8 = {polylineRuta8RE};

Set<Marker> markerRuta8 = {markerIR, markerRR};
