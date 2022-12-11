import 'package:flutter/material.dart';

class Map_page extends StatefulWidget {
  const Map_page({Key? key}) : super(key: key);

  @override
  State<Map_page> createState() => _Map_pageState();
}

class _Map_pageState extends State<Map_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map '),
        backgroundColor: Colors.purple,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
    );
  }
}
