import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_place_updated/search_map_place_updated.dart';



class Map_page extends StatefulWidget {
  const Map_page({Key? key}) : super(key: key);

  @override
  State<Map_page> createState() => _Map_pageState();
}

class _Map_pageState extends State<Map_page> {
  Set<Marker> _markers = {};

  get mapController => null;

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

       body: Container(

         child: Column(
           children: [
             SearchMapPlaceWidget(
               clearIcon: Icons.search_rounded,

               textColor: Colors.black,
               bgColor: Colors.white,

               hasClearButton: true,
               placeType: PlaceType.address,
               placeholder: "Enter the Location",
               apiKey: 'AIzaSyDt551lP1OudU10IloGtZOIJyPFMM8Icl8',
             onSelected: (Place place) async{
               Geolocation? geolocation = await place.geolocation;
               mapController.animateCamera(
                 CameraUpdate.newLatLng(geolocation?.coordinates
                 )
               );
               mapController.animateCamera(
                   CameraUpdate.newLatLng(geolocation?.bounds,
                   )
               );
             },
             ),

             Padding(

               padding: const EdgeInsets.only(top: 8.0),
               child: SizedBox(
                 height: 650,
                 child: GoogleMap(
                   onMapCreated: _onMapCreated,

                   markers: _markers,
                   initialCameraPosition: CameraPosition(
                       target: LatLng ( 7.2906, 80.6337),

                   zoom: 15
                 ),
                 ),
               ),
             ),
           ],
         ),
       ),
    );
  }
}
