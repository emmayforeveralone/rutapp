// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/firebase/firebase_auth_service.dart';
import 'package:rutapp/generated/l10n.dart';

class MarkersWidget extends StatelessWidget {
  final BuildContext context;

  final S marcadorUno;
  final String xochi = "Xochimilco";
  final String dos = "Laureles 2";
  final String tres = "5 de Febrero";
  final String seis = "Bonanza Por Tercera";
  final String ocho = "Bonanza Por la 17";
  final String nueve = "Palmeras";
  final String once = "Montenegro";
  final String doce = "La Joya";
  final String trece = "Framboyanes";
  final String catorce = "Vida Mejor";
  final String quince = "Periferico Izquierda";
  final String dieciseis = "Periferico Derecha";
  final String diecisiete = "Emiliano Zapata Par Vial";
  final String dieciocho = "Los Palacions";
  final String diecinueve = "Seminarista";
  final String veinte = "6 de Enero";
  final String veintiuno = "Lomas de sayula (tecnica 3)";
  final String veintidos = "Colinas del Rey";
  final String veintitres = "Estacion Galaxias";
  final String veintitresE = "Estacion Galaxias Extension";
  final String veinticuatro = "El Vergel";
  final String veinticinco = "Libertad del Carmen";
  final String veintiseis = "Soliradidad 2000";
  final String veintisiete = "Cafetales Vida Mejor";
  final String veintiocho = "Las Vegas Izquierda";
  final String veintinueve = "Las Vegas Derecha";
  final String treinta = "El Porvenir";
  final String treintauno = "Francisco Villa";
  final String treintados = "18 de Octubre";
  final String treintatres = "Teofilo Acebo 1";
  final String treintacuatro = "Confeti";
  final String treintacinco = "5 de Febrero San Juan";
  final String treintasiete = "Las Americas";
  final String treintaocho = "Bonanza por Central";
  final String treintanueve = "Loma Linda";
  final String cuarentaUno = "Nuevo Milenio";
  final String cuarentDos = "Raymundo Enrique";
  final String cuarentTres = "Tecnica 3";
  final String cuarentCuatro = "Zocalo Estacion";
  final String cuarentCinco = "Emiliano Zapata";
  final String cuarentSeis = "Teofilio Acebo";
  final String cuarentSiete = "Venustiano Carranza";
  final String cuarentNueve = "Unidad Administrativa";
  final String huixtlaK = "Huixtla";
  final String puerto = "Puerto Madero";

  const MarkersWidget(this.marcadorUno, {super.key, required this.context});

  Set<Marker> createMarkers() {
    Set<Marker> markers = {};

    ////// RUTA 1
    Marker markerIX = Marker(
      markerId: const MarkerId('markerIX'),
      position: const LatLng(14.944155, -92.256285),
      infoWindow: InfoWindow(
        title: marcadorUno.Ida,
        snippet: marcadorUno.Ruta(xochi),
      ),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "RMkMx13O3NV2JVKwMTsJw4ifbF43"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_xochi.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    Marker markerRX = Marker(
      markerId: const MarkerId('markerRX'),
      position: const LatLng(14.911874, -92.264891),
      infoWindow: InfoWindow(
        title: marcadorUno.Regreso,
        snippet: marcadorUno.Ruta(xochi),
      ),
      onTap: () {},
    );

    /////// RUTA 2
    Marker markerILau = Marker(
      markerId: const MarkerId('markerIDARUTA2'),
      position: const LatLng(14.871950910080855, -92.25113979291167),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(dos)),
    );
    Marker markerRLau = Marker(
        markerId: const MarkerId('markerRegresoRUTA2'),
        position: const LatLng(14.910895251721378, -92.26681775015547),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(dos)));

    //////////// RUTA 3
    Marker markerIFebrero = Marker(
      markerId: const MarkerId('markerIdaRUTA3'),
      position: const LatLng(14.950402428008362, -92.25401951577824),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(tres)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "rFZhwldYfUeMzfmEEfKE9tRhpoo2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_5febrero.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    Marker markerRFebrero = Marker(
      markerId: const MarkerId('markerRegresoRUTA3'),
      position: const LatLng(14.911487636284026, -92.26444684386084),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(tres)),
    );

    ///////// RUTA 6
    Marker markerIBonanza = Marker(
      markerId: const MarkerId('markerIdaRUTA6'),
      position: const LatLng(14.900038387213106, -92.24218549585548),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(seis)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "7dQFLhdSd6SEODNGKja3gRaxkCh1"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_5febrero.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRBonanza = Marker(
        markerId: const MarkerId('markerRegresoRUTA5'),
        position: const LatLng(14.910304392332062, -92.25895969025628),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(seis)));

    ///////// RUTA 7
    Marker markerIBonanza17 = Marker(
      markerId: const MarkerId('markerIdaRUTA8'),
      position: const LatLng(14.867818838864874, -92.27617462615618),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(ocho)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "7JpHOwY53QNan8ctUmKdZkoOQD03"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_5febrero.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRBonanza17 = Marker(
        markerId: const MarkerId('markerRegresoRUTA8'),
        position: const LatLng(14.912447756692464, -92.2657426262038),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(ocho)));

    ///////// RUTA 9
    Marker markerIPalmeras = Marker(
      markerId: const MarkerId('markerIdaRUTA9'),
      position: const LatLng(14.907939959473968, -92.26580160803033),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(nueve)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "Y3H0sEp3xpV73XfBipiifK7Ek5m2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_5febrero.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRPalmeras = Marker(
        markerId: const MarkerId('markerRegresoRUTA9'),
        position: const LatLng(14.856793835533134, -92.26662171361298),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(nueve)));

    //////// RUTA 11
    Marker markerIMontenegro = Marker(
      markerId: const MarkerId('markerIdaRUTA11'),
      position: const LatLng(14.91380504527542, -92.26477509310585),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(once)),
    );
    Marker markerRMontenegro = Marker(
      markerId: const MarkerId('markerRegresoRUTA11'),
      position: const LatLng(14.928546750549737, -92.24242373647574),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(once)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "0xWo5BP8K3gZm4zpb8JoPmzq8mj1"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_montenegro.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    //////// RUTA 12
    Marker markerIJoya = Marker(
      markerId: const MarkerId('markerIdaRUTA12'),
      position: const LatLng(14.87200744395737, -92.26052992873105),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(doce)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "J7FeZeWFo1OQ0ktgXP7btLUBnSC2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_montenegro.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRJoya = Marker(
        markerId: const MarkerId('markerRegresoRUTA3'),
        position: const LatLng(14.908411062159404, -92.25733174109645),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(doce)));
    /////// RUTA 13
    Marker markerIFramboyanes = Marker(
      markerId: const MarkerId('markerIdaRUTA13'),
      position: const LatLng(14.904918183876894, -92.27640348441359),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(trece)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "HSELnoU1rCasUq7Aet27oDgh8Jj1"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_framboyanes.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRFramboyanes = Marker(
        markerId: const MarkerId('markerRegresoRUTA3'),
        position: const LatLng(14.913706085744433, -92.26483031041772),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(trece)));

    //////// RUTA 14
    Marker markerIVida = Marker(
      markerId: const MarkerId('markerIdaRUTA14'),
      position: const LatLng(14.868125026628082, -92.30974603465725),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(catorce)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "ddSECHrD6xeJ7WLQlhQalTUG0zk2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_framboyanes.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRVida = Marker(
        markerId: const MarkerId('markerRegresoRUTA3'),
        position: const LatLng(14.915504419647878, -92.26361195680327),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(catorce)));

    ////// RUTA 15
    Marker markerIPerifericoIzq = Marker(
      markerId: const MarkerId('markerIdaRUTA15'),
      position: const LatLng(14.903155, -92.268810),
      infoWindow:
          InfoWindow(title: marcadorUno.Ida, snippet: marcadorUno.Ruta(quince)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "UrdDRIIXCGMwoixZ6aDDNKB1HHn1"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_perifericoIzq.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ///// RUTA 16
    Marker markerIPerifericoDer = Marker(
      markerId: const MarkerId('markerIdaRUTA16'),
      position: const LatLng(14.903293, -92.268994),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(dieciseis)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "izVBej0MjGetNoW4UJxASxpZQie2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_perifericoIzq.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ///// RUTA 17  14.868447, -92.286129
    Marker markerIEmiliano = Marker(
        markerId: const MarkerId('markerIdaRUTA17'),
        position: const LatLng(14.885061455356162, -92.2719627500856),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(diecisiete)));
    Marker markerREmiliano = Marker(
      markerId: const MarkerId('markerRegresoRUTA17'),
      position: const LatLng(14.909199186281478, -92.26661278135965),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(diecisiete)),
    );

    Marker markerIEmilianoBase = Marker(
      markerId: const MarkerId('markerIdaRUTA17'),
      position: const LatLng(14.868447, -92.286129),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(diecisiete)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "QIBf0aaSTAVMKniy8ZiyCMZfMqk2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_emilianoZapata.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ///// RUTA 18
    Marker markerIPalacios = Marker(
      markerId: const MarkerId('markerIdaRUTA17'),
      position: const LatLng(14.856612107834472, -92.25844520109351),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(dieciocho)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_palacios.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRPalacios = Marker(
        markerId: const MarkerId('markerRegresoRUTA18'),
        position: const LatLng(14.912688087637367, -92.26439853103358),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(dieciocho)));

    ///// RUTA 19
    Marker markerISeminarista = Marker(
        markerId: const MarkerId('markerIdaRUTA19'),
        position: const LatLng(14.878587638044804, -92.24618925118713),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(diecinueve)));
    Marker markerRSeminarista = Marker(
        markerId: const MarkerId('markerRegresoRUTA19'),
        position: const LatLng(14.910961048888597, -92.26551303684381),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(diecinueve)));

    ///// RUTA 20
    Marker markerIEnero = Marker(
        markerId: const MarkerId('markerIdaRUTA20'),
        position: const LatLng(14.878079253627012, -92.25557407942205),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veinte)));
    Marker markerREnero = Marker(
      markerId: const MarkerId('markerRegresoRUTA20'),
      position: const LatLng(14.911771944646082, -92.26621528208234),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veinte)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/base_palacios.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    //// RUTA 21 de aqui
    Marker markerILomas = Marker(
      markerId: const MarkerId('markerIdaRUTA21'),
      position: const LatLng(14.915760128335334, -92.23903891048877),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintiuno)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/21.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRLomas = Marker(
        markerId: const MarkerId('markerRegresoRUTA21'),
        position: const LatLng(14.911293236309309, -92.26420293799492),
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veintiuno)));

    //// RUTA 22
    Marker markerIColinas = Marker(
      markerId: const MarkerId('markerIdaRUTA22'),
      position: const LatLng(14.931119465346342, -92.24674225981146),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintidos)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/22.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRColinas = Marker(
        markerId: const MarkerId('markerRegresoRUTA22'),
        position: const LatLng(14.912431200770666, -92.26455513546168),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veintidos)));

    ///// RUTA 23
    Marker markerIEstacionG = Marker(
      markerId: const MarkerId('markerIdaRUTA23'),
      position: const LatLng(14.876678878740666, -92.2997825582719),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintitres)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/23.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerREstacionG = Marker(
        markerId: const MarkerId('markerRegresoRUTA23'),
        position: const LatLng(14.912704080556866, -92.2677333594763),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veintitres)));

    //// RUTa 24
    Marker markerIVergel = Marker(
      markerId: const MarkerId('markerIdaRUTA24'),
      position: const LatLng(14.926859866457542, -92.26991807774965),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veinticuatro)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/24.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRVergel = Marker(
        markerId: const MarkerId('markerRegresoRUTA24'),
        position: const LatLng(14.91565480614814, -92.26524535356685),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(veinticuatro)));

    ///// RUTA 25
    Marker markerILibertad = Marker(
      markerId: const MarkerId('markerIdaRUTA25'),
      position: const LatLng(14.911497383602342, -92.26578511608048),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veinticinco)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/25.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRLibertad = Marker(
        markerId: const MarkerId('markerRegresoRUTA3'),
        position: const LatLng(14.891930739344135, -92.29756901704991),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(veinticinco)));

    ///// RUTA 26
    Marker markerRSolidaridad = Marker(
      markerId: const MarkerId('markerRegresoRUTA26'),
      position: const LatLng(14.950402428008362, -92.25401951577824),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veintiseis)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/26.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerISoliradidad = Marker(
        markerId: const MarkerId('markerIdaRUTA26'),
        position: const LatLng(14.911487636284026, -92.26444684386084),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintiseis)));

    ///// RUTA 27
    Marker markerICafetales = Marker(
      markerId: const MarkerId('markerIdaRUTA27'),
      position: const LatLng(14.874447122686213, -92.29833607957244),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintisiete)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/27.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRCafetales = Marker(
        markerId: const MarkerId('markerRegresoRUTA3'),
        position: const LatLng(14.910933980692793, -92.26350430388831),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(veintisiete)));

    ///// RUTA 28
    Marker markerIVegasIzq = Marker(
      markerId: const MarkerId('markerIdaRUTA28'),
      position: const LatLng(14.890752108317402, -92.28375170041973),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintiocho)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/28.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRVegasIzq = Marker(
        markerId: const MarkerId('markerRegresoRUTA28'),
        position: const LatLng(14.912552693521517, -92.26503143785993),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(veintiocho)));

    ///// RUTA 29
    Marker markerIVegasDer = Marker(
      markerId: const MarkerId('markerIdaRUTA29'),
      position: const LatLng(14.89365134714328, -92.28222951490548),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(veintinueve)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/29.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRVegasDer = Marker(
        markerId: const MarkerId('markerRegresoRUTA29'),
        position: const LatLng(14.91254709782167, -92.26503078444301),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(veintinueve)));

    ///// RUTA 30
    Marker markerIPorvenir = Marker(
      markerId: const MarkerId('markerIdaRUTA30'),
      position: const LatLng(14.942151746778316, -92.26680781177792),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treinta)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/30.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRPorvenir = Marker(
        markerId: const MarkerId('markerRegresoRUTA30'),
        position: const LatLng(14.915740303111379, -92.26524009184264),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treinta)));

    ///// RUTA 31
    Marker markerIFrancisco = Marker(
      markerId: const MarkerId('markerIdaRUTA31'),
      position: const LatLng(14.912543675730971, -92.26449286313206),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintauno)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/31.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRFrancisco = Marker(
        markerId: const MarkerId('markerRegresoRUTA5'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRose),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treintauno)));

    //// RUTA 32
    Marker markerIOctubre = Marker(
      markerId: const MarkerId('markerIdaRUTA32'),
      position: const LatLng(14.920303685730518, -92.28692641213105),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintados)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/32.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerROctubre = Marker(
        markerId: const MarkerId('markerRegresoRUTA32'),
        position: const LatLng(14.915222074962239, -92.26495638271793),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treintados)));

    ////// RUTA 33
    Marker markerITeofilo = Marker(
      markerId: const MarkerId('markerIdaRUTA33'),
      position: const LatLng(14.87817592299174, -92.27853075729483),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintatres)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/33.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRTeofilio = Marker(
        markerId: const MarkerId('markerRegresoRUTA33'),
        position: const LatLng(14.91094473195664, -92.26350558126313),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(treintatres)));

    ///// RUTA 34
    Marker markerIConfeti = Marker(
      markerId: const MarkerId('markerIdaRUTA34'),
      position: const LatLng(14.902228879679438, -92.28296140543418),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintacuatro)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/34.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRConfeti = Marker(
        markerId: const MarkerId('markerRegresoRUTA34'),
        position: const LatLng(14.915726622268053, -92.26523239829439),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(treintacuatro)));

    ////// RUTA 35
    Marker markerIFebreroSan = Marker(
        markerId: const MarkerId('markerIdaRUTA35'),
        position: const LatLng(14.945417641042521, -92.2532321010747),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintacinco)));
    Marker markerRFebreroSan = Marker(
      markerId: const MarkerId('markerRegresoRUTA35'),
      position: const LatLng(14.912568928650966, -92.26505223546101),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treintacinco)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/35.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ////// RUTA 37
    Marker markerIAmericas = Marker(
        markerId: const MarkerId('markerIdaRUTA37'),
        position: const LatLng(14.92838147666123, -92.26184694583675),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintasiete)));
    Marker markerRAmericas = Marker(
      markerId: const MarkerId('markerRegresoRUTA37'),
      position: const LatLng(14.911938971516017, -92.26488023150213),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treintasiete)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/36.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ////// RUTA 38
    Marker markerIBonanzaCen = Marker(
      markerId: const MarkerId('markerIdaRUTA38'),
      position: const LatLng(14.900148902404279, -92.24364977720329),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintaocho)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/37.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRBonanzaCen = Marker(
        markerId: const MarkerId('markerRegresoRUTA38'),
        position: const LatLng(14.912582936783396, -92.26565057225893),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(treintaocho)));

    ////// RUTA 39
    Marker markerILomaLinda = Marker(
        markerId: const MarkerId('markerIdaRUTA39'),
        position: const LatLng(14.931889843325756, -92.27664907759764),
        icon:
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(treintanueve)));
    Marker markerRLomaLinda = Marker(
      markerId: const MarkerId('markerRegresoRUTA39'),
      position: const LatLng(14.915305267411469, -92.26507612025155),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueMagenta),
      infoWindow: InfoWindow(
          title: marcadorUno.Regreso, snippet: marcadorUno.Ruta(treintanueve)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/39.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );

    ///// RUTA 41
    Marker markerIMilenio = Marker(
      markerId: const MarkerId('markerRegresoRUTA41'),
      position: const LatLng(14.908166260221039, -92.26914727297864),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      infoWindow: InfoWindow(
          title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentaUno)),
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => FutureBuilder(
            future: getUserData(
                "BWqWrlV2QybGuxRIuFMq8O1IzAO2"), // Reemplaza "idDelUsuario" con el ID real del usuario
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Error: ${snapshot.error}"),
                );
              } else {
                Map<String, dynamic> userData = snapshot.data ?? {};
                return Container(
                  height: 400,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/41.png',
                        width: 300, // Ajusta el ancho según sea necesario
                        height: 200, // Ajusta la altura según sea necesario
                      ),
                      const SizedBox(height: 10),
                      Text(
                          "${S().Placas}: ${userData['placas'] ?? 'No disponible'}"),
                      Text(
                          "${S().Conductor}: ${userData['conductor'] ?? 'No disponible'}"),
                      Text(
                          "${S().NumCombi}: ${userData['numeroCombi'] ?? 'No disponible'}"),
                    ],
                  ),
                );
              }
            },
          ),
        );
      },
    );
    Marker markerRMilenio = Marker(
        markerId: const MarkerId('markerRegresoRUTA41R'),
        position: const LatLng(14.905065444604146, -92.26935903480027),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentaUno)));

    //HAZTA AQUI

    /////// RUTA 42
    Marker markerIRaymundo = Marker(
        markerId: const MarkerId('markerIdaRUTA42'),
        position: const LatLng(14.867608436996724, -92.31542570678378),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentDos)));
    Marker markerRRaymundo = Marker(
        markerId: const MarkerId('markerRegresoRUTA42'),
        position: const LatLng(14.915719116940721, -92.26524338355786),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentDos)));

    ////// RUTA 43
    Marker markerITecnica = Marker(
        markerId: const MarkerId('markerIdaRUTA43'),
        position: const LatLng(14.911732301338352, -92.26489217505592),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentTres)));
    Marker markerRTecnica = Marker(
        markerId: const MarkerId('markerRegresoRUTA43'),
        position: const LatLng(14.9157588292443, -92.23907263677798),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentTres)));

    ////// RUTA 44
    Marker markerIZocalo = Marker(
        markerId: const MarkerId('markerIdaRUTA44'),
        position: const LatLng(14.898808585226764, -92.26816802083115),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentCuatro)));
    Marker markerRZocalo = Marker(
        markerId: const MarkerId('markerRegresoRUTA44'),
        position: const LatLng(14.9107645662752, -92.26182457089368),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentCuatro)));

    /////// RUTA 45
    Marker markerIZapata = Marker(
        markerId: const MarkerId('markerIdaRUTA45'),
        position: const LatLng(14.890119393865326, -92.26613108525414),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentCinco)));
    Marker markerRZapata = Marker(
        markerId: const MarkerId('markerRegresoRUTA45'),
        position: const LatLng(14.890182165398828, -92.26669081615206),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentCinco)));

    ////// RUTA 46
    Marker markerIAcebo = Marker(
        markerId: const MarkerId('markerIdaRUTA46'),
        position: const LatLng(14.890174911732707, -92.26636199352828),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentSeis)));
    Marker markerRAcebo = Marker(
        markerId: const MarkerId('markerRegresoRUTA46'),
        position: const LatLng(14.890153114507369, -92.2663755263026),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentSeis)));

    ////// RUTA 47
    Marker markerIVenustiano = Marker(
        markerId: const MarkerId('markerIdaRUTA47'),
        position: const LatLng(14.884064037515538, -92.24828062922347),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentSiete)));
    Marker markerRVenustiano = Marker(
        markerId: const MarkerId('markerRegresoRUTA47'),
        position: const LatLng(14.912637422975234, -92.26508372619396),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentSiete)));

    //// REGRESO
    Marker markerIVenustianoR = Marker(
        markerId: const MarkerId('markerIdaRUTA47R'),
        position: const LatLng(14.884064037515538, -92.24828062922347),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentSiete)));
    Marker markerRVenustianoR = Marker(
        markerId: const MarkerId('markerRegresoRUTA47R'),
        position: const LatLng(14.908718861503216, -92.2669136085503),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentSiete)));

    ///// RUTA 49
    Marker markerIUnidad = Marker(
        markerId: const MarkerId('markerIdaRUTA49'),
        position: const LatLng(14.911521204074448, -92.26582914732838),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentNueve)));
    Marker markerRUnidad = Marker(
        markerId: const MarkerId('markerRegresoRUTA49'),
        position: const LatLng(14.893724198569963, -92.26979771402520),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentNueve)));
    //// REGRESO
    Marker markerIUnidadR = Marker(
        markerId: const MarkerId('markerIdaRUTA49'),
        position: const LatLng(14.911521204074448, -92.26582914732838),
        infoWindow: InfoWindow(
            title: marcadorUno.Ida, snippet: marcadorUno.Ruta(cuarentNueve)));
    Marker markerRUnidadR = Marker(
        markerId: const MarkerId('markerRegresoRUTA49'),
        position: const LatLng(14.893724198569963, -92.2697977140252),
        infoWindow: InfoWindow(
            title: marcadorUno.Regreso,
            snippet: marcadorUno.Ruta(cuarentNueve)));

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

    markers.add(markerIX);
    markers.add(markerRX);
    //
    markers.add(markerILau);
    markers.add(markerRLau);
    //
    markers.add(markerIFebrero);
    markers.add(markerRFebrero);
    //
    markers.add(markerIBonanza);
    markers.add(markerRBonanza);
    //
    markers.add(markerIBonanza17);
    markers.add(markerRBonanza17);
    //
    markers.add(markerIPalmeras);
    markers.add(markerRPalmeras);
    //
    markers.add(markerIMontenegro);
    markers.add(markerRMontenegro);
    //
    markers.add(markerIJoya);
    markers.add(markerRJoya);
    //
    markers.add(markerIFramboyanes);
    markers.add(markerRFramboyanes);
    //
    markers.add(markerIVida);
    markers.add(markerRVida);
    //
    markers.add(markerIPerifericoIzq);
    //
    markers.add(markerIPerifericoDer);
    //
    markers.add(markerIEmiliano);
    markers.add(markerREmiliano);
    markers.add(markerIEmilianoBase);
    //
    markers.add(markerIPalacios);
    markers.add(markerRPalacios);
    //
    markers.add(markerISeminarista);
    markers.add(markerRSeminarista);
    //
    markers.add(markerIEnero);
    markers.add(markerREnero);
    //
    markers.add(markerILomas);
    markers.add(markerRLomas);
    //
    markers.add(markerIColinas);
    markers.add(markerRColinas);
    //
    markers.add(markerIEstacionG);
    markers.add(markerREstacionG);

    //
    markers.add(markerIVergel);
    markers.add(markerRVergel);
    //
    markers.add(markerILibertad);
    markers.add(markerRLibertad);
    //
    markers.add(markerISoliradidad);
    markers.add(markerRSolidaridad);
    //
    markers.add(markerICafetales);
    markers.add(markerRCafetales);
    //
    markers.add(markerIVegasIzq);
    markers.add(markerRVegasIzq);
    //
    markers.add(markerIVegasDer);
    markers.add(markerRVegasDer);
    //
    markers.add(markerIPorvenir);
    markers.add(markerRPorvenir);
    //
    markers.add(markerIFrancisco);
    markers.add(markerRFrancisco);
    //
    markers.add(markerIOctubre);
    markers.add(markerROctubre);
    //
    markers.add(markerITeofilo);
    markers.add(markerRTeofilio);
    //
    markers.add(markerIConfeti);
    markers.add(markerRConfeti);
    //
    markers.add(markerIFebreroSan);
    markers.add(markerRFebreroSan);
    //
    markers.add(markerIAmericas);
    markers.add(markerRAmericas);
    //
    markers.add(markerIBonanzaCen);
    markers.add(markerRBonanzaCen);
    //
    markers.add(markerILomaLinda);
    markers.add(markerRLomaLinda);
    //
    markers.add(markerIMilenio);
    markers.add(markerRMilenio);
    //
    markers.add(markerIRaymundo);
    markers.add(markerRRaymundo);
    //
    markers.add(markerITecnica);
    markers.add(markerRTecnica);
    //
    markers.add(markerIZocalo);
    markers.add(markerRZocalo);
    //
    markers.add(markerIZapata);
    markers.add(markerRZapata);
    //
    markers.add(markerIAcebo);
    markers.add(markerRAcebo);
    //
    markers.add(markerIVenustiano);
    markers.add(markerRVenustiano);
    markers.add(markerIVenustianoR);
    markers.add(markerRVenustianoR);
    //
    markers.add(markerIUnidad);
    markers.add(markerRUnidad);
    markers.add(markerIUnidadR);
    markers.add(markerRUnidadR);
    //
    markers.add(markerHuixtlaIda);
    markers.add(markerHuixtlaReg);
    //
    markers.add(markerPuertoIda);
    markers.add(markerPuertoReg);

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
