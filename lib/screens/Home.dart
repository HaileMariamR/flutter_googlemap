import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  List<Marker> markers = [
    Marker(
      markerId: MarkerId('lalibela_id'),
      position: LatLng(12.032182555692236, 39.04805166114641),
      infoWindow: InfoWindow(title: 'Lalibela Marker'),
    ),
       Marker(
      markerId: MarkerId('addisababa_id'),
      position: LatLng(  8.97127874139163, 38.7293849050104),
      infoWindow: InfoWindow(title: 'Addis Ababa Marker'),
    ),
       Marker(
      markerId: MarkerId('Gondar_id'),
      position: LatLng(    12.600453547971986,  37.45129781587551),
      infoWindow: InfoWindow(title: 'Gondar Marker'),
    ),

  ];

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 5.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      drawer: Drawer(),
      body: Container(
          child: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        markers: Set<Marker>.of(markers),
      )),
    );
  }
}
