import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sri_go/CabService_page.dart';
import 'package:sri_go/Hotels_page.dart';
import 'package:sri_go/Map_page.dart';
import 'package:sri_go/Places_page.dart';
import 'package:sri_go/main.dart';





class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Controller to handle PageView and also handles initial page




  /// widget list




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.purple,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),

    );
  }
}




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
              color: Colors.blueAccent,
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
              color: Colors.blueAccent,
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
              color: Colors.pink,
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
              color: Colors.yellow,
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
              color: Colors.yellow,
            ),
            itemLabel: 'Page 5',
          ),
        ],
        onTap: (index) {
          /// control your animation using page controller
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn,
          );
        },
      )
          : null,

    );
  }
}


