import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final items = const[

   Icon(Icons.home,size: 30,color: Colors.white70,),
    Icon(Icons.travel_explore,size: 30,color: Colors.white70,),
    Icon(Icons.car_crash,size: 30,color: Colors.white70,),
    Icon(Icons.hotel,size: 30,color: Colors.white70,),
    Icon(Icons.place,size: 30,color: Colors.white70,)
  ];

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
        ),

      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.purple,
        items: items,
        index: index,
        onTap: (selectedIndex){
          setState(
              (){
                index = selectedIndex;
              });
        },
        height: 60,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),

      ),


    );
  }

  void setState(Null Function() param0) {}
}

