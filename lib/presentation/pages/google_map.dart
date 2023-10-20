import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maydon_app/domain/models/stadium_model/latlng_model.dart';


class MakerGoogleMap extends StatefulWidget {
  const MakerGoogleMap({super.key});

  @override
  State<MakerGoogleMap> createState() => _MakerGoogleMapState();
}

class _MakerGoogleMapState extends State<MakerGoogleMap> {
  final Completer<GoogleMapController> _controller = Completer();
  List<Marker> markers = [];
  Set<Polyline> polylines = <Polyline>{};
  List<LatLng> coordinates = [];
  late double lat;
  late double long;

  @override
  void initState() {
    init();
    super.initState();
  }

  void init() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                  child: GoogleMap(
                    mapType: MapType.normal,
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
                onTap: (latlng){
                      lat=latlng.latitude;
                      long=latlng.longitude;
                      LatLngModel(lat: lat, lng: long);
                      Marker marker=Marker(markerId:  const MarkerId("1"),
                      position: LatLng(latlng.latitude,latlng.longitude),
                        infoWindow: const InfoWindow(title: "Gra mercy tavern"),
                        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure)
                      );

                      markers.add(marker);
                      setState(() {

                      });
                      debugPrint("OnTap: lang: $latlng");
                },
                initialCameraPosition: const CameraPosition(
                    target: LatLng(41.32574515190196, 69.22600921243429), zoom: 14),
                onMapCreated: (controller) {
                  _controller.complete(controller);
                },
                markers: markers.map((e) => e).toSet(),
                polylines: polylines,
              )),Expanded(
                flex: 1,
                child: ElevatedButton(onPressed: (){
                  debugPrint("Lat : $lat Long : $long");
                }, child: Text("Add")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
