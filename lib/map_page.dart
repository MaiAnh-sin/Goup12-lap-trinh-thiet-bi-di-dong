import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Geolocator _geolocatorUser = new Geolocator();
  static const LatLng _pGoogleMap = LatLng(20.9721, 105.7749);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _pGoogleMap,
          zoom: 13,
        ),
        markers: {
          Marker(
              markerId: MarkerId("_current_location"),
              icon: BitmapDescriptor.defaultMarker,
              position: _pGoogleMap)
        },
      ),
    );
  }

  // Add this package to open settings (optional)

  Future<void> getLocationUpdates() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled. Please enable them.');
      // Optionally, open location settings for the user
      Geolocator.openLocationSettings();
      return;
    }

    // Check and request permission if necessary
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permissions are denied.');
        return;
      }
    }
  }
}
