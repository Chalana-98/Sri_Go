import 'package:cloud_firestore/cloud_firestore.dart';
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

  final Stream<QuerySnapshot> _PlaceStream = FirebaseFirestore.instance.collection('Places').snapshots();
  @override
  Widget build(BuildContext context) {


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
          child: Places(),

        ),

      ),


    );

  }
  
}


class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {

  final Stream<QuerySnapshot> _placeStream = FirebaseFirestore.instance.collection('Places').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _placeStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
      if (snapshot.hasError) {
        return Text('Something went wrong');
      }

      if (snapshot.connectionState == ConnectionState.waiting) {
        return Text("Loading");
      }

      return Container(

        child: GridView(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 2,),

          primary: false,
          padding: const EdgeInsets.all(10),
          children: [
            Card(
              color: Colors.white,


              child: Container(

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10

                    )
                  ],

                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [

                          Colors.deepPurple,
                          Colors.greenAccent
                        ]
                    )
                ),

                child: Column(

                  children: [

                    Container(

                        child: Image.asset('assets/images/anu1.jpg',height: 130,width: 140,)),

                    TextButton(onPressed: (){

                    },
                        child:Text("view detail", style: TextStyle(color: Colors.black),)),
                  ],
                ),
              ),
            ),

            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),

            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
            ),
            Card(
                color: Colors.white,


                child: Container(

                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 10

                        )
                      ],

                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [

                            Colors.deepPurple,
                            Colors.greenAccent
                          ]
                      )
                  ),

                  child: Column(

                    children: [

                      TextButton(onPressed: (){

                      },
                          child:Text("view detail", style: TextStyle(color: Colors.black),)),
                    ],
                  ),
                )
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


      );/*ListView(
        children: snapshot.data!.docs.map((DocumentSnapshot document) {
          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
          return ListTile(
            title: Text(data['full_name']),
            subtitle: Text(data['company']),
          );
        }).toList(),
      );*/


    },
    );

  }
}

