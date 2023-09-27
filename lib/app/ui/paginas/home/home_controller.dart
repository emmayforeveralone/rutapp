import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart' show ChangeNotifier;

class HomeController extends ChangeNotifier {
  final initialCameraPosition =
      const CameraPosition(target: LatLng(14.90385, -92.25749), zoom: 14.4746);

  void complete(GoogleMapController controller) {}

  // MARCADORES, PERO CUANDO EL USUARIO DE CLICK, SE MUESTREN

  // final Map<MarkerId, Marker> _markers = {};

  // Set<Marker> get markers => _markers.values.toSet();

  // void onTap(LatLng position) {
  //   final markerId = MarkerId(_markers.length.toString());
  //   final marker = Marker(markerId: markerId, position: position);

  //   _markers[markerId] = marker;
  //   notifyListeners();
  // }
}
