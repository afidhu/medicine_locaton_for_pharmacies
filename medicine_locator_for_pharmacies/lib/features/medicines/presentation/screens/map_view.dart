
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static final LatLng initialPosition = LatLng(
    -6.762602648795709,
    39.20352220425603,
  );

  LatLng? currentPosition;
  final Completer<GoogleMapController> _mapController = Completer();
  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();


    // Draw initial static polyline (optional) WITHOUT currentPosition
    final polylinePoints = [
      LatLng(-6.761000, 39.203800),
      LatLng(-6.759500, 39.204200),
    ];
    generatePlyLineFromPoints(polylinePoints);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _mapController.complete(controller);
        },
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 14,
        ),
        markers: {
          // Marker(
          //   markerId: const MarkerId('Current_loc'),
          //   position: currentPosition!,
          //   icon: BitmapDescriptor.defaultMarkerWithHue(30),
          // ),
        },
        polylines: Set<Polyline>.of(polylines.values),
      ),
    );
  }



  Future<void> _cameraToPosition(LatLng ps) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition newCameraPosition = CameraPosition(target: ps, zoom: 14);
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
  }

  void generatePlyLineFromPoints(List<LatLng> points) {
    PolylineId id = const PolylineId('poly');

    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: points,
      width: 8,
    );

    setState(() {
      polylines[id] = polyline;
    });
  }
}