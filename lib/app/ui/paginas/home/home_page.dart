import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:rutapp/app/datos/ruta12.dart';
// import 'package:rutapp/app/datos/ruta3.dart';
// import 'package:rutapp/app/datos/ruta1.dart';
// import 'package:rutapp/app/datos/ruta2.dart';
// import 'package:rutapp/app/datos/ruta31.dart';
// import 'package:rutapp/app/datos/ruta32.dart';
// import 'package:rutapp/app/datos/ruta33.dart';
// import 'package:rutapp/app/datos/ruta34.dart';
// import 'package:rutapp/app/datos/ruta35.dart';
// import 'package:rutapp/app/datos/ruta37.dart';
// import 'package:rutapp/app/datos/ruta38.dart';
// import 'package:rutapp/app/datos/ruta39.dart';
// import 'package:rutapp/app/datos/ruta40.dart';
// import 'package:rutapp/app/datos/ruta40regreso.dart';
// import 'package:rutapp/app/datos/ruta41.dart';
// import 'package:rutapp/app/datos/ruta41regreso.dart';
// import 'package:rutapp/app/datos/ruta42.dart';
// import 'package:rutapp/app/datos/ruta42regreso.dart';
// import 'package:rutapp/app/datos/ruta43.dart';
// import 'package:rutapp/app/datos/ruta44.dart';
// import 'package:rutapp/app/datos/ruta45.dart';
// import 'package:rutapp/app/datos/ruta46.dart';
// import 'package:rutapp/app/datos/ruta47.dart';
// import 'package:rutapp/app/datos/ruta47regreso.dart';
// import 'package:rutapp/app/datos/ruta49.dart';
// import 'package:rutapp/app/datos/ruta49regreso.dart';
// import 'package:rutapp/app/datos/ruta6.dart';
// import 'package:rutapp/app/datos/ruta7.dart';
// import 'package:rutapp/app/datos/ruta8.dart';
// import 'package:rutapp/app/datos/ruta11.dart';
// import 'package:rutapp/app/datos/ruta13.dart';
// import 'package:rutapp/app/datos/ruta14.dart';
// import 'package:rutapp/app/datos/ruta15.dart';
// import 'package:rutapp/app/datos/ruta16.dart';
// import 'package:rutapp/app/datos/ruta17.dart';
// import 'package:rutapp/app/datos/ruta18.dart';
// import 'package:rutapp/app/datos/ruta19.dart';
// import 'package:rutapp/app/datos/ruta20.dart';
// import 'package:rutapp/app/datos/ruta21.dart';
// import 'package:rutapp/app/datos/ruta22.dart';
// import 'package:rutapp/app/datos/ruta23.dart';
// import 'package:rutapp/app/datos/ruta24.dart';
// import 'package:rutapp/app/datos/ruta25.dart';
// import 'package:rutapp/app/datos/ruta26.dart';
// import 'package:rutapp/app/datos/ruta27.dart';
// import 'package:rutapp/app/datos/ruta28.dart';
// import 'package:rutapp/app/datos/ruta29.dart';
// import 'package:rutapp/app/datos/ruta30.dart';
import 'package:rutapp/app/ui/paginas/home/combi.dart';
import 'package:rutapp/app/ui/paginas/ruta1Marcadores.dart';
// import 'package:rutapp/blocs/preferences_blocs.dart';

import 'package:rutapp/generated/l10n.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  String? _combiSeleccionada;
  S marcadorXochimilco = S();
  S com = S();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(14.90385, -92.25749),
    zoom: 14.4746,
  );

  static const CameraPosition _initialCameraPosition = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(14.90385, -92.25749),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  // NO SE TOCA
  Future<Object> _requestLocationPermission() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('error');
        // Permiso concedido, puedes acceder a la ubicación.
      }
    }
    return await Geolocator.requestPermission();
  }

  @override
  void initState() {
    _requestLocationPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RUT-APP"),
      ),
      body: Column(
        children: [
          DropdownButtonFormField<String>(
            value: _combiSeleccionada,
            onChanged: (newValue) {
              setState(() {
                _combiSeleccionada = newValue;
              });
            },
            items: listaDeCombis.map((combi) {
              return DropdownMenuItem<String>(
                value: combi.nombre,
                child: Text(combi.nombre),
              );
            }).toList(),
            menuMaxHeight: 300.0,
            decoration: InputDecoration(
              labelText: S().Combi,
            ),
          ),
          Expanded(
            child: GoogleMap(
              zoomControlsEnabled: false,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: <Polyline>{
                if (_combiSeleccionada != null)
                  ...listaDeCombis
                      .lastWhere((combi) => combi.nombre == _combiSeleccionada,
                          orElse: () => Combi('', {}))
                      .ruta,
              },
              markers: {
                ...MarkersWidget(marcadorXochimilco).createMarkers(),
                // ...markerRuta2,
                // ...markerRuta3,
                // ...markerRuta31,
                // ...markerRuta32,
                // ...markerRuta33,
                // ...markerRuta34,
                // ...markerRuta35,
                // ...markerRuta37,
                // ...markerRuta38,
                // ...markerRuta39,
                // ...markerRuta6,
                // // ...markerRuta7,
                // ...markerRuta8,
                // ...markerRuta11,
                // ...markerRuta12,
                // ...markerRuta13,
                // ...markerRuta14,
                // ...markerRuta15,
                // ...markerRuta16,
                // ...markerRuta17,
                // ...markerRuta18,
                // ...markerRuta19,
                // ...markerRuta20,
                // ...markerRuta21,
                // ...markerRuta22,
                // ...markerRuta23,
                // ...markerRuta23Extension,
                // ...markerRuta24,
                // ...markerRuta25,
                // ...markerRuta26,
                // ...markerRuta27,
                // ...markerRuta28,
                // ...markerRuta29,
                // ...markerRuta30,
                // ...markerRuta31,
                // ...markerRuta32,
                // ...markerRuta33,
                // ...markerRuta34,
                // ...markerRuta35,
                // ...markerRuta37,
                // ...markerRuta38,
                // ...markerRuta39,
                // ...markerRuta41,
                // ...markerRuta41Reg,
                // ...markerRuta42,
                // ...markerRuta42Reg,
                // ...markerRuta43,
                // ...markerRuta44,
                // ...markerRuta45,
                // ...markerRuta46,
                // ...markerRuta47,
                // ...markerRuta47Reg,
                // ...markerRuta49,
                // ...markerRuta49Reg,
                // print("markHOLA MUNDO")
              },

              //polylines: //_polylines,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text(S().Mapa),
        icon: const Icon(Icons.zoom_out_map_sharp),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    final Position position = await Geolocator.getCurrentPosition();
    // ignore: unused_local_variable
    final LatLng userLocation = LatLng(position.latitude, position.longitude);

    await controller
        .animateCamera(CameraUpdate.newCameraPosition(_initialCameraPosition));
  }
}

// class LanguageCard extends StatelessWidget {
//   const LanguageCard({super.key});

//   String _localizeLocale(BuildContext context, Locale locale) {
//     if (locale == null) {
//       return S.of(context).systemLanguage;
//     } else {
//       final localeString = LocaleNames.of(context)?.nameOf(locale.toString());
//       return localeString![0].toUpperCase() + localeString.substring(1);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final preferencesBloc = context.bloc<PreferencesBloc>();

//     return Container();
//   }
// }
