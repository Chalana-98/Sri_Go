import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sri_go/CabService_page.dart';
import 'package:sri_go/Hotels_page.dart';
import 'package:sri_go/Map_page.dart';
import 'package:sri_go/Places_page.dart';





class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      /*appBar: AppBar(

        title: Text('Home'),
        backgroundColor: Colors.purple,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      )*/


      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.black87,
                    Colors.purple

                  ]

              )
          ),
          child: Column(

            children: [


              ///heading
              Row(

                //crossAxisAlignment: CrossAxisAlignment.start,

                children: [


                  Container(


                    height: 120,
                    width: 90,
                    padding: const EdgeInsets.all(8.0),

                    child: Image.asset('assets/images/srigo3-01.png',
                      height: 50,width: 50,
                    ),

                  ),



                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [



                      Container(

                        width: 100,

                        child: Text('Sri Go',
                          style: GoogleFonts.alfaSlabOne(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                  ),


                  Container(

                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,



                      children: [


                        IconButton(onPressed: (){},
                            icon:  Icon(Icons.settings),
                          iconSize: 30,

                        )
                      ],
                    ),
                  ),




                ],



              ),

              CarouselSlider(items:[
                Container(
                height: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
                  ],
                  options: CarouselOptions(
                      height: 500.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8
                  )
              ),



              CarouselSlider(
                items: [
                  Container(

                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          width: 310,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black38),
                          child: Text("List view1",style: TextStyle(fontSize: 32,color: Colors.white),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
                ],
                  options: CarouselOptions(

                      height: 100.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8
                  )
              )
            ],
          ),
        ),
      ),



    );
  }
}


// Navigation Bar


class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

  final _pageController = PageController(initialPage: 0);
  int maxCount = 5;

  final List<Widget> bottomBarPages = [
    HomePage(),
    const Place_page(),
    const CabService(),
    const Hotels_page(),
    const Map_page(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),

      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        pageController: _pageController,

        color: Colors.white,
        showLabel: false,
        notchColor: Colors.purple,
        bottomBarItems: [


          const BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),


            activeItem: Icon(
              Icons.home_filled,
              color: Colors.white,
            ),
            itemLabel: 'Page 1',
          ),


          const BottomBarItem(
            inActiveItem: Icon(
              Icons.travel_explore,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.travel_explore,
              color: Colors.white,
            ),
            itemLabel: 'Page 2',
          ),


          const BottomBarItem(
            inActiveItem: Icon(
              Icons.car_crash_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.car_crash_outlined,
              color: Colors.white,
            ),
            itemLabel: 'Page 4',
          ),

          const BottomBarItem(
            inActiveItem: Icon(
              Icons.hotel,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.hotel,
              color: Colors.white,
            ),
            itemLabel: 'Page 5',
          ),

          const BottomBarItem(
            inActiveItem: Icon(
              Icons.place,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.place,
              color: Colors.white,
            ),
            itemLabel: 'Page 6',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeIn,
          );
        },
      )
          : null,

    );
  }
}


