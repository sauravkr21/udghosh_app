import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GoogleMapController? mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(26.510186000825904, 80.23212125323418); //location to show in map

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GoogleMap( //Map widget from google_maps_flutter package
        zoomGesturesEnabled: true, //enable Zoom in, out on map
        initialCameraPosition: CameraPosition( //innital position in map
          target: showLocation, //initial position
          zoom: 15.0, //initial zoom level
        ),
        markers: getmarkers(), //markers to show on map
        mapType: MapType.normal, //map type
        onMapCreated: (controller) { //method called when map is created
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }

  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add first marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Hall 1 ',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add second marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(26.503973510191138, 80.22939586672564), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Pronite Ground ',

        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      markers.add(Marker( //add third marker
        markerId: MarkerId(showLocation.toString()),
        position: LatLng(26.505358620710812, 80.22939171275934), //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'Oat ',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));

      //add more markers here
    });

    return markers;
  }
}
