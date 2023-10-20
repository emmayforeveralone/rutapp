import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta31.dart';
import 'package:rutapp/app/datos/ruta32.dart';
import 'package:rutapp/app/datos/ruta33.dart';
import 'package:rutapp/app/datos/ruta34.dart';
import 'package:rutapp/app/datos/ruta35.dart';
import 'package:rutapp/app/datos/ruta37.dart';
import 'package:rutapp/app/datos/ruta38.dart';
import 'package:rutapp/app/datos/ruta39.dart';



class Combi {
  final String nombre;
  final Set<Polyline> ruta;

  Combi(this.nombre, this.ruta);
}

// Lista de combis
final List<Combi> listaDeCombis = [
  Combi('RUTA XOCHIMILCO', polylineIdaXochi), // Ruta 1
  Combi('RUTA 2', polylineIDA2), // Ruta 2
  Combi('Ruta 5 de Febrero', polylineIDA3),

    Combi('Ruta Francisco Villa ida', polylineIDA31),

    Combi('Ruta 18 de Octubre ida ', polylineIDA32),
      Combi('Ruta 18 de Octubre regreso', polylineREGRESO32),

    Combi('Ruta Teofilo Acebo 1 ida', polylineIDA33),
            Combi('Ruta Teofilo Acebo 1 regreso', polylineREGRESO33),

    Combi('Ruta Confeti ida', polylineIDA34),
            Combi('Ruta Confeti regreso', polylineREGRESO34),

    Combi('Ruta 5 de Febrero San Juan ida', polylineIDA35),
                Combi('Ruta 5 de Febrero San Juan regreso', polylineREGRESO35),

    Combi('Ruta Las Americas ida', polylineIDA37),
                    Combi('Ruta Las Americas regreso', polylineREGRESO37),

    Combi('Ruta Bonanza por Central ida', polylineIDA38),
                        Combi('Ruta Bonanza por Central regreso', polylineREGRESO38),

    Combi('Ruta Loma Linda ida', polylineIDA39),
                            Combi('Ruta Loma Linda regreso', polylineREGRESO39),





  // Agrega más combis según sea necesario
];
