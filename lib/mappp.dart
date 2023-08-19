import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApppp());

class MyApppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Maps Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Google Maps Demo'),
        ),
        body: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(23.0225, 72.5714),
            zoom: 12,
          ),
        ),
      ),
    );
  }
}