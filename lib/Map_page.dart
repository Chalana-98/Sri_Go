import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map_page extends StatefulWidget {
  const Map_page({Key? key}) : super(key: key);

  @override
  State<Map_page> createState() => _Map_pageState();
}

class _Map_pageState extends State<Map_page> {
  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _markers.add(Marker(markerId: MarkerId('ID-1'), position: LatLng ( 7.2906, 80.6337),
      infoWindow: InfoWindow(
        title: 'Kandy',
        snippet: "Word heritage city"
      )));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Google Map '),
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),

       body: GoogleMap(
         onMapCreated: _onMapCreated,
         markers: _markers,
         initialCameraPosition: CameraPosition(
             target: LatLng ( 7.2906, 80.6337),

         zoom: 15
       ),
       ),
    );
  }
}
