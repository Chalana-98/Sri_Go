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
      endDrawer:
      Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("ABC"),
              accountEmail: Text("ABC"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person), title: Text("profile"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings), title: Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: Icon(Icons.account_circle_outlined), title: Text("LogOut"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts), title: Text("About Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,


      appBar: AppBar(

        title: Text('Sri Go',style: GoogleFonts.allison(fontSize: 50, color: Colors.greenAccent),),
        backgroundColor: Colors.purple,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),


      body: Center(

        child: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.greenAccent,
                    Colors.purple.shade600

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

                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,



                      children: [


                        /*IconButton(onPressed: (){},
                            icon:  Icon(Icons.settings),
                          iconSize: 30,


                        )*/
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


