import 'package:brain_wired_apk/core/colors.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class ScreenGoogleMap extends StatelessWidget {
  final LatLng latLng;
  const ScreenGoogleMap({super.key, required this.latLng});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "User Location",
          style: TextStyle(color: myBlack),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: latLng,
          zoom: 14,
        ),
      ),
    );
  }
}
