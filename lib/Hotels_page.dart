import 'package:flutter/material.dart';

class Hotels_page extends StatefulWidget {
  const Hotels_page({Key? key}) : super(key: key);

  @override
  State<Hotels_page> createState() => _Hotels_pageState();
}

class _Hotels_pageState extends State<Hotels_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Hotels'),
        backgroundColor: Colors.purple,

        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon:Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),


      body:  Center(
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
        ),
      ),
    );
  }
}
