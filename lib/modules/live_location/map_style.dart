

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../shared/variables.dart';



List<LatLng> polylineCoordinates = [];
void getPolyPoints() async {
  PolylinePoints polylinePoints = PolylinePoints();
  PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
    "AIzaSyBSob1uooRKAkU1SzUjXrxsAeVj-u_OcTc", // Your Google Map Key
    PointLatLng(initial_trian_location_lat, initial_trian_location_long),
    PointLatLng(latitude, longitude),
  );
  if (result.points.isNotEmpty) {
    result.points.forEach(
          (PointLatLng point) => polylineCoordinates.add(
        LatLng(point.latitude, point.longitude),
      ),
    );

  }
}
