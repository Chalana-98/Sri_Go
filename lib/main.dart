import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sri_go/Login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState()=> SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),
        ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:
    (context)=>HomeScreen()
      )
     )
    );
  }

  @override
  Widget build(BuildContext context) {
   return Container(

     color: Colors.white,
      child: Image.asset('assets/images/back2-01.png',
        fit: BoxFit.fill,

        width: 300.00,
        height: 200.00,

      )
   );

  }
  
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Login_page()
                ));
          },
          //icon: Icon(Icons.ac_unit_sharp),
          label: Text("ok"),
          ),



     // appBar: AppBar(title: Text("Sri_Go")),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/back1-01.png'),
                fit: BoxFit.cover
            )
        ),
        child: ListView(

          children: [


            CarouselSlider(


                items: [
                  Container(

                    margin: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/photo_2.jpg'),
                        fit: BoxFit.contain,
                      ),

                    ),


                  ),

                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/photo_1.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/photo_3.jpg'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                ],
                options: CarouselOptions(
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8

                )

            ),

            Column(
              children: [

                Text('You can find the Destination you are interested in, find Accommodation facilities as well as Transport facilities to reach there easily through   Sri Go.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                      fontSize: 30
                  ),
                )

              ],
            ),


          ],

        ),
      ),


    );




  }
  
}



