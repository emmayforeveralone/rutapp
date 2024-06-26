import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/ui/paginas/home/combiForanea.dart';
import 'package:rutapp/views/bases_combis_foraneas.dart';

import 'package:rutapp/generated/l10n.dart';

class HomePageForaneas extends StatefulWidget {
  const HomePageForaneas({super.key});

  @override
  State<HomePageForaneas> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageForaneas> {
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
            items: listaDeCombisForaneas.map((combi) {
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
              mapType: MapType.terrain,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: <Polyline>{
                if (_combiSeleccionada != null)
                  ...listaDeCombisForaneas
                      .lastWhere((combi) => combi.nombre == _combiSeleccionada,
                          orElse: () => CombiForaneas('', {}))
                      .ruta,
              },
              markers: {
                ...BasesCombi(
                  marcadorXochimilco,
                  context: context,
                ).createMarkers(),
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
