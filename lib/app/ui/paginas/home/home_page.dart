// ignore: unnecessary_import
import 'dart:async';

import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rutapp/app/datos/ruta3.dart';
import 'package:rutapp/app/datos/ruta1.dart';
import 'package:rutapp/app/datos/ruta2.dart';
import 'package:rutapp/app/datos/ruta5.dart';
import 'package:rutapp/app/datos/ruta6.dart';
import 'package:rutapp/app/ui/paginas/home/combi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Completer<GoogleMapController> _controller = Completer();
  String? _combiSeleccionada;

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
    // _addPolyline(); // Agregar la ruta al mapa
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
            decoration: const InputDecoration(
              labelText: 'Selecciona una Combi',
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
              polylines: {
                if (_combiSeleccionada != null)
                  ...listaDeCombis
                      .firstWhere((combi) => combi.nombre == _combiSeleccionada,
                          orElse: () => Combi('', {}))
                      .ruta,
              },

              markers: {
                ...markerXochi,
                ...markerRuta2,
                ...markerRuta3,
                ...markerRuta5,
                ...markerRuta6
              },

              //polylines: //_polylines,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
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
