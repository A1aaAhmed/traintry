import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graduation_project_app/modules/live_location/map_style.dart';
import 'package:graduation_project_app/shared/components/appBar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import '../../shared/variables.dart';
import 'package:graduation_project_app/shared/style/colors.dart';
BitmapDescriptor user_icon = BitmapDescriptor.defaultMarker;
BitmapDescriptor train_icon= BitmapDescriptor.defaultMarker;
class LiveLocationScreen extends StatefulWidget {
  const LiveLocationScreen({super.key});

  @override
  State<LiveLocationScreen> createState() => _LiveLocationScreenState();
}

class _LiveLocationScreenState extends State<LiveLocationScreen> {


  final Completer<GoogleMapController> _controller = Completer();
  late StreamSubscription _locationSubscription;
  Location _locationTracker = Location();


@override
  void initState() {
    // TODO: implement initState
     super.initState();
     getPolyPoints();

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context: context, text: 'Live location', morelist: false),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(latitude,longitude),
          zoom: 15,
        ),
        markers: {
          // Marker(
          //     markerId: const MarkerId("initail_train"),
          //     position: LatLng(initial_trian_location_lat, initial_trian_location_long),
          //     icon:train_icon
          // ),

          Marker(
            markerId: const MarkerId("user"),
            position: LatLng(latitude, longitude),
             icon: user_icon
          ),
          Marker(
            markerId: const MarkerId("train"),
              position: LatLng(initial_trian_location_lat, initial_trian_location_long),
            icon:train_icon
          ),

        },
        // onMapCreated: (controller) {
        //   map_controller=controller;
        // },
        polylines: {
          Polyline(
            polylineId: const PolylineId("route"),
            points: polylineCoordinates,
            color: Colors.red,
            width: 6,
          ),
        },
        onMapCreated: (mapController) {
          _controller.complete(mapController);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.location_searching,
        color: colortheme.lightPurple
        ),
        onPressed: ()async{
          try{
          var location = await _locationTracker.getLocation();
          }on PlatformException catch (e) {
            if (e.code == 'PERMISSION_DENIED') {
              debugPrint("Permission Denied");
            }
          }


        },
      )

      ,
    );
  }
}
void setCustomMarkerIcon() {
  BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty, "assets/Pin_source.png")
      .then(
        (icon) {
      user_icon = icon;
    },
  );
  BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty, "assets/P"
      "in_destination.png")
      .then(
        (icon) {
      train_icon = icon;
    });

}

