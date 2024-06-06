import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:rutapp/app/datos/rutaCacahoatan.dart';
import 'package:rutapp/app/datos/rutaHuixtla.dart';
import 'package:rutapp/app/datos/rutaPuerto.dart';
import 'package:rutapp/app/datos/rutaTalisman.dart';
import 'package:rutapp/app/datos/rutaTuxChico.dart';
import 'package:rutapp/generated/l10n.dart';

class CombiForaneas {
  final String nombre;
  final Set<Polyline> ruta;

  CombiForaneas(this.nombre, this.ruta);
}

const String huixtla = "Huixtla";
const String puerto = "Puerto Madero";
const String cacahoatan = "Cacahoatan";
const String talisman = "Talisman";
const String tuxChico = "Tuxtla Chico";

// Lista de combis
final List<CombiForaneas> listaDeCombisForaneas = [
  CombiForaneas(S().ForaneaI(huixtla), polylineIDAHuixtla),
  CombiForaneas(S().ForaneaR(huixtla), polylineREGHuixtla),
  CombiForaneas(S().ForaneaI(puerto), polylineIDAPUERTO),
  CombiForaneas(S().ForaneaR(puerto), polylineREGPUERTO),
  CombiForaneas(S().Foranea(cacahoatan), polylineIdaCacahoatan),
  CombiForaneas(S().Foranea(talisman), polylineIdaTalisman),
  CombiForaneas(S().Foranea(tuxChico), polylineIdaTuxtlaChico)
];
