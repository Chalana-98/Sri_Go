import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sri_go/constant.dart';


class Place_page extends StatefulWidget {
  const Place_page({Key? key}) : super(key: key);

  @override
  State<Place_page> createState() => _Place_pageState();
}

class _Place_pageState extends State<Place_page> {
  @override
  Widget build(BuildContext context) {

    var arrDistrics = ['Ampara',"Anuradhapura,",'Badulla','Batticaloa',
                         'Colombo','Galle','Gampaha','Hambantota','Jaffna','Kalutara',
                       'Kandy','Kegalle','Kilinochchi','Kurunegala','Mannar','Matale',
                      'Matara','Monaragala','Mullaitivu','Nuwara Eliya','Polonnaruwa',
               'Puttalam','Ratnapura','Trincomalee','Vavuniya'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Place'),
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),

      body:  Center(


        child: Container(
          padding: EdgeInsets.all(8),

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.greenAccent,
                Colors.purple

              ]

            )
          ),

          child: Container(
            child: GridView(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,),

              primary: false,
              padding: const EdgeInsets.all(10),
              children: [
                Card(


                  color: Colors.white,
                  child: Column(

                    children: [
                      Text('01')
                    ],
                  ),
                ),

                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),
                Card(
                  color: Colors.white,

                  child: Column(
                    children: [

                      TextButton(onPressed: (){},
                          child:Text("view detail")),

                      Text('01')
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
