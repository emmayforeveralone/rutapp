// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/generated/l10n.dart';

class BasesCombi extends StatelessWidget {
  final BuildContext context;

  final S marcadorUno;

  //FORANEAS
  final String huixtlaK = "Huixtla";
  final String puerto = "Puerto Madero";
  final String cacahoatan = "Cacahoatan";
  final String talisman = "Talisman";
  final String tucChico = "Tuxtla Chico";

  const BasesCombi(this.marcadorUno, {super.key, required this.context});

  Set<Marker> createMarkers() {
    Set<Marker> markers = {};

    // FORANEAS
    // RUTA HUIXTLA
    Marker markerHuixtlaIda = Marker(
        markerId: const MarkerId("markerIdaHuixtla"),
        position: const LatLng(15.140604622787576, -92.46536741179564),
        infoWindow: InfoWindow(
          title: marcadorUno.Ida,
          snippet: marcadorUno.Ruta(huixtlaK),
        ));

    Marker markerHuixtlaReg = Marker(
        markerId: const MarkerId("markerRegHuixtla"),
        position: const LatLng(14.91077176834897, -92.2614562274157),
        infoWindow: InfoWindow(
          title: marcadorUno.Regreso,
          snippet: marcadorUno.Ruta(huixtlaK),
        ));

    //// PUERTO MADER
    Marker markerPuertoIda = Marker(
      markerId: const MarkerId("markerIdaPuerto"),
      position: const LatLng(14.912818995797739, -92.26688616321292),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(puerto)),
    );

    Marker markerPuertoReg = Marker(
        markerId: const MarkerId("markerRegPuerto"),
        position: const LatLng(14.718383463726774, -92.42254932486284),
        infoWindow: InfoWindow(
          title: marcadorUno.Regreso,
          snippet: marcadorUno.Ruta(puerto),
        ));

    // RUTA CACAHOATAN
    Marker markerIdaCacahoatan = const Marker(
        markerId: MarkerId('marker'),
        position: LatLng(14.913337545057166, -92.2672640228076),
        infoWindow: InfoWindow(
            title: "Base de Ida", snippet: "Ruta Foranea Cacahoatan"));

    Marker markerRegresoCacahoatan = Marker(
        markerId: const MarkerId('marker'),
        position: const LatLng(14.996250841199759, -92.1644619788005),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(cacahoatan)));

    // RUTA TALISMAN
    Marker markerIdaTalisman = const Marker(
        markerId: MarkerId('marker'),
        position: LatLng(14.913337545057166, -92.2672640228076),
        infoWindow:
            InfoWindow(title: "Base de Ida", snippet: "RUTA Foranea Talisman"));

    Marker markerRegreTalisman = const Marker(
        markerId: MarkerId('marker'),
        position: LatLng(14.963313020499001, -92.147759179376),
        infoWindow: InfoWindow(
            title: "Base de Regreso", snippet: "RUTA Foranea Talisman"));

    // RUTA TUX CHICO
    Marker markerIdaTux = const Marker(
        markerId: MarkerId('marker'),
        position: LatLng(14.913337545057166, -92.2672640228076),
        infoWindow: InfoWindow(
            title: "Base de Ida", snippet: "RUTA Foranea Tuxtla Chico"));

    Marker markerRegresoTux = const Marker(
        markerId: MarkerId('marker'),
        position: LatLng(14.939347714806548, -92.168323808123),
        infoWindow: InfoWindow(
            title: "Base de Regreso", snippet: "RUTA Foranea Tuxtla Chico"));

    //
    //  COMBIS FORANEAS
    markers.add(markerHuixtlaIda);
    markers.add(markerHuixtlaReg);
    //
    markers.add(markerPuertoIda);
    markers.add(markerPuertoReg);
    //
    markers.add(markerIdaCacahoatan);
    markers.add(markerRegresoCacahoatan);
    //
    markers.add(markerIdaTalisman);
    markers.add(markerRegreTalisman);
    //
    markers.add(markerIdaTux);
    markers.add(markerRegresoTux);

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
